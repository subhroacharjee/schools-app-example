import 'dart:async';

import 'package:assessments/assessments.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core_flutter/domain/usecases/get_user_names.dart';
import 'package:core_flutter/utils/polling_mixin.dart';
import 'package:dartx/dartx.dart';
import 'package:equatable/equatable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schools_app/schools_app.dart';
import 'package:schools_app/src/domain/entities/class_student.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';

class ClassStudentsBloc extends FutureAsyncSnapshotCubit<ClassStudentsState>
    with AssessmentsConfigurerMixin, ClassInfoCacheMixin, PollingMixin<List<ClassStudent>> {
  List<ClassStudent> _unfilteredStudents = [];

  @override
  Duration get pollingInterval => const Duration(seconds: 10);

  @override
  bool get pollAtStart => true;

  @override
  FutureOr<ClassStudentsState> resolve() {
    if (classId != null) {
      startPolling();
    }
    // Making use of the nullability to denote loading state
    return ClassStudentsState(students: null);
  }

  @override
  FutureOr<void> onPollResult(List<ClassStudent> latestResult) {
    if (!isClosed) {
      emitWithData(
        ClassStudentsState(
          students: latestResult,
          accessedStudentId: state.data?.accessedStudentId,
        ),
      );
    }
  }

  @override
  Future<List<ClassStudent>> poll() => _getStudents();

  @override
  Future<void> close() {
    stopPolling();
    return super.close();
  }

  void search(String? v) {
    if (v?.isEmpty ?? true) {
      emitWithData(
        ClassStudentsState(
          students: [..._unfilteredStudents],
          accessedStudentId: state.data?.accessedStudentId,
        ),
      );
    } else {
      emitWithData(
        ClassStudentsState(
          students: [..._unfilteredStudents]
              .where(
                (element) => element.name.toLowerCase().contains(
                      v!.toLowerCase(),
                    ),
              )
              .toList(),
          accessedStudentId: state.data?.accessedStudentId,
        ),
      );
    }
  }

  void setSelectedStudent(String? id) =>
      emitWithData(ClassStudentsState(students: state.data!.students, accessedStudentId: id));

  Future<List<ClassStudent>> _getStudents() async {
    final studentIds = await SchoolsAppRepository()
        .getStudents(classId!)
        .map(
          (ok) => ok.$class.classStudents.map((e) => e.classUser.id),
        )
        .unwrap();

    configurer.hasStudents = studentIds.isNotEmpty;
    return _unfilteredStudents = await GetUserNames(studentIds.toList())().when(
      ok: (ok) => ok.entries.map((e) => ClassStudent(id: e.key, name: e.value)).toList(),
      err: (_) => <ClassStudent>[],
    );
  }
}

class ClassStudentsState with EquatableMixin {
  ClassStudentsState({
    required this.students,
    this.accessedStudentId,
  });

  final List<ClassStudent>? students;
  final String? accessedStudentId;

  ClassStudent? get accessedStudent => students?.firstOrNullWhere((e) => e.id == accessedStudentId);

  @override
  List<Object?> get props => [
        students,
        accessedStudentId,
      ];
}
