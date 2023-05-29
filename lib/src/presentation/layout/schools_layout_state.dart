import 'package:core/domain/entities/user/enums/user_type.dart';
import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:core_flutter/presentation/shell/navigation/route_info.dart';
import 'package:dartx/dartx.dart';
import 'package:go_router/go_router.dart';
import 'package:schools_app/src/domain/entities/class_item_info.dart';
import 'package:schools_app/src/domain/entities/class_student.dart';
import 'package:schools_app/src/presentation/blocs/student_active_test_bloc.dart';
import 'package:schools_app/src/presentation/layout/bloc/class_students_bloc.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_bloc.dart';

abstract class SchoolsLayoutState extends LayoutState {
  SchoolsLayoutState({
    required super.initialRoute,
    required super.rootUserType,
    required super.rootUser,
    required super.isSidebarHidden,
    required this.sidebarBloc,
    required this.routes,
  });

  final SidebarBloc sidebarBloc;
  final List<RouteBase> routes;

  @override
  List<Object?> get props => [
        ...super.props,
        sidebarBloc,
        routes,
      ];
}

class UnauthenticatedLayoutState extends SchoolsLayoutState {
  UnauthenticatedLayoutState({
    required super.initialRoute,
    required super.isSidebarHidden,
    required super.sidebarBloc,
    required super.routes,
  }) : super(
          rootUserType: UserType.teacher,
          rootUser: null,
        );
}

enum TeacherOnboardingState {
  accountCreated,
  joinedSchool,
  createdFirstClass,
  unknown,
}

class TeacherLayoutState extends SchoolsLayoutState {
  TeacherLayoutState({
    required super.initialRoute,
    required super.rootUser,
    required super.isSidebarHidden,
    required this.accessedClassId,
    required this.accessedStudentId,
    required this.classes,
    required this.classStudentsBloc,
    required super.sidebarBloc,
    required super.routes,
    this.redirectRoute,
    this.onboardingState = TeacherOnboardingState.createdFirstClass,
  }) : super(rootUserType: UserType.teacher);

  final String? accessedClassId;
  final String? accessedStudentId;
  final List<ClassItemInfo> classes;
  final ClassStudentsBloc classStudentsBloc;
  final TeacherOnboardingState onboardingState;
  final String? redirectRoute;

  @override
  List<Object?> get props => [
        ...super.props,
        accessedClassId,
        accessedStudentId,
        classes,
        classStudentsBloc,
        onboardingState,
        redirectRoute,
      ];

  ClassItemInfo? get accessedClass => classes.firstOrNullWhere((e) => e.id == accessedClassId);
  int get classesCount => classes.length;
  ClassStudent? get accessedStudent =>
      classStudentsBloc.state.data?.students?.firstOrNullWhere((e) => e.id == accessedStudentId);

  TeacherLayoutState copyWith({
    SimpleRouteInfo? initialRoute,
    AccessibleRootUser? Function()? rootUser,
    bool? isSidebarHidden,
    String? Function()? accessedClassId,
    String? Function()? accessedStudentId,
    List<ClassItemInfo>? classes,
    ClassStudentsBloc? classStudentsBloc,
    List<RouteBase>? routes,
    SidebarBloc? sidebarBloc,
    TeacherOnboardingState? onboardingState,
    String? redirectRoute,
  }) {
    return TeacherLayoutState(
      initialRoute: initialRoute ?? this.initialRoute,
      rootUser: rootUser?.call() ?? this.rootUser,
      isSidebarHidden: isSidebarHidden ?? this.isSidebarHidden,
      accessedClassId: accessedClassId != null ? accessedClassId() : this.accessedClassId,
      accessedStudentId: accessedStudentId != null ? accessedStudentId() : this.accessedStudentId,
      classes: classes ?? this.classes,
      classStudentsBloc: classStudentsBloc ?? this.classStudentsBloc,
      sidebarBloc: sidebarBloc ?? this.sidebarBloc,
      routes: routes ?? this.routes,
      onboardingState: onboardingState ?? this.onboardingState,
      redirectRoute: redirectRoute,
    );
  }
}

class StudentLayoutState extends SchoolsLayoutState {
  StudentLayoutState({
    required super.initialRoute,
    required super.rootUser,
    required super.isSidebarHidden,
    required super.sidebarBloc,
    required super.routes,
    required this.activeTestBloc,
  }) : super(rootUserType: UserType.student);

  final StudentActiveTestBloc activeTestBloc;

  @override
  List<Object?> get props => [
        ...super.props,
        routes,
        sidebarBloc,
        activeTestBloc,
      ];
}

class AccessedStudentLayoutState extends SchoolsLayoutState {
  AccessedStudentLayoutState({
    required super.initialRoute,
    required super.rootUser,
    required super.isSidebarHidden,
    required super.sidebarBloc,
    required super.routes,
  }) : super(rootUserType: UserType.teacher);
}
