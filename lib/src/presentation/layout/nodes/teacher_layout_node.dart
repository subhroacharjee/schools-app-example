import 'dart:async';

import 'package:assessments/assessments.dart';
import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/usecases/user/current_user.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:core_flutter/presentation/layout/select_strategy.dart';
import 'package:core_flutter/presentation/shell/navigation/route_info.dart';
import 'package:dartx/dartx.dart';
import 'package:learning_library/utils/learning_cache_service.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schools_app/src/domain/entities/class_item_info.dart';
import 'package:schools_app/src/domain/entities/last_visited_data.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/layout/bloc/class_students_bloc.dart';
import 'package:schools_app/src/presentation/layout/helpers.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_bloc.dart';
import 'package:schools_app/src/services/class_info_cache.dart';

class TeacherLayoutNode extends SchoolsLayoutNode<TeacherLayoutState>
    with
        ClassInfoCacheMixin,
        SchoolsLayoutNodeRetryMixin<TeacherLayoutState>,
        AssessmentsConfigurerMixin {
  TeacherLayoutNode() {
    enableRetry();
  }

  final Map<String, LastVisitedUrlData> lastVisitedRoutes = {};
  final _repo = SchoolsAppRepository();
  StreamSubscription<AsyncSnapshot<ClassStudentsState>>? _studentsBlocSub;
  ClassStudentsBloc? _classStudentsBloc;
  TeacherOnboardingState _onboardingState = TeacherOnboardingState.unknown;
  @override
  SchoolsLayoutType get layoutType => SchoolsLayoutType.teacher;

  @override
  Map<FeatureId, SimpleRouteInfo> get featureToRoute => {
        FeatureId.curriculum: Routes.curriculum,
        FeatureId.assessments: Routes.assessments,
        FeatureId.students: Routes.students,
        FeatureId.statistics: Routes.statistics,
        FeatureId.learningTasks: Routes.learningTasks,
      };

  @override
  Future<SimpleRouteInfo> initialRoute() async => Routes.curriculum;

  @override
  Future<void> retriedResolve() async {
    final id = emulatedUserId().unwrap();
    final classesRes = await _repo.getClasses().unwrap();
    final rootUser = await GetCurrentUser(emulatedUserId)().unwrap();
    final classes = classesRes.getClassesTeacher.getClassesSchool?.teacherClasses ?? [];

    // We use class id in the cache incase of a refresh
    final previousClassId = state.data?.accessedClassId ?? classId;

    final fallbackClassId = classes.firstOrNull?.id;
    final accessedClassId = classes.none((e) => e.id == previousClassId)
        ? fallbackClassId
        : (previousClassId ?? fallbackClassId);
    if (accessedClassId != null) {
      await classInfoCache.setClassId(accessedClassId);
    }

    await _classStudentsBloc?.close();
    _classStudentsBloc = ClassStudentsBloc();

    final newState = TeacherLayoutState(
      initialRoute: await initialRoute(),
      rootUser: AccessibleRootUser(
        userId: id,
        firstName: rootUser.firstName ?? '',
        lastName: rootUser.lastName ?? '',
        additionalInfo: '',
        profileImage: rootUser.profileImage,
        parentId: null,
      ),
      isSidebarHidden: false,
      onboardingState: _onboardingState,
      classes: classes
          .map(
            (e) => ClassItemInfo(
              id: e.id,
              name: e.name,
              code: e.code,
              hasStudents: e.teacherStudents.isNotEmpty,
            ),
          )
          .toList(),
      accessedClassId: accessedClassId,
      accessedStudentId: null,
      classStudentsBloc: _classStudentsBloc!,
      sidebarBloc: _studentSidebarBloc(),
      routes: [
        ...Routes.teacherRoutes,
      ],
    );
    configurer.hasStudents = newState.accessedClass?.hasStudents ?? false;
    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        newState,
      ),
    );
    if (_classStudentsBloc!.classId != null) {
      _subscribeToStudentsBloc(_classStudentsBloc!.classId!);
    }
    if (_onboardingState == TeacherOnboardingState.unknown) {
      resolveOnboardingState();
    }
  }

  Future<void> clearRedirectRoute() async {
    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        state.data!.copyWith(),
      ),
    );
  }

  Future<void> changeOnboardingState(TeacherOnboardingState newState) async {
    final data = state.data!;
    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        data.copyWith(
          onboardingState: _onboardingState = newState,
        ),
      ),
    );

    _subscribeToStudentsBloc(_classStudentsBloc!.classId!);
  }

  Future<void> resolveOnboardingState() async {
    final classesRes = await _repo.getClasses().unwrap();

    _onboardingState = TeacherOnboardingState.createdFirstClass;
    final school = classesRes.getClassesTeacher.getClassesSchool;
    if (school == null) {
      _onboardingState = TeacherOnboardingState.accountCreated;
    } else if (school.teacherClasses.isEmpty) {
      _onboardingState = TeacherOnboardingState.joinedSchool;
    }

    if (state.data != null) {
      emit(
        AsyncSnapshot.withData(
          ConnectionState.active,
          state.data!.copyWith(onboardingState: _onboardingState),
        ),
      );
    }
  }

  Future<void> clearTopicAndSubtopicId() async => Future.wait([
        classInfoCache.setTopicId(null),
        classInfoCache.setSubtopicId(null),
      ]);

  Future<void> accessClass(String id) async {
    final data = state.data!;

    await clearTopicAndSubtopicId();
    platformUserId.set(null);
    classInfoCache.setClassId(id);

    final lastUrlData = lastVisitedRoutes[id];

    // When a class has not been visited before, we set the topic and subtopic to null
    classInfoCache
      ..setTopicId(lastUrlData?.topicId)
      ..setSubtopicId(lastUrlData?.subtopicId);

    final sidebarBloc = data.accessedStudent != null ? _studentSidebarBloc() : data.sidebarBloc;

    await _classStudentsBloc?.close();
    _classStudentsBloc = ClassStudentsBloc();
    final newState = data.copyWith(
      accessedClassId: () => id,
      accessedStudentId: () => null,
      sidebarBloc: sidebarBloc,
      classStudentsBloc: _classStudentsBloc,
      redirectRoute: lastVisitedRoutes[id]?.url.path ?? Routes.curriculum.blueprint,
    );
    configurer.hasStudents = newState.accessedClass?.hasStudents ?? false;
    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        newState,
      ),
    );
    _subscribeToStudentsBloc(id);
  }

  Future<void> accessStudent(String? id) async {
    final data = state.data!;
    if (id == data.accessedStudentId) return;

    platformUserId.set(id);
    log.v('Setting accessed student to $id');
    if (id != null) {
      LearningCacheService().clearKnowledgeCache(classId);
    }

    SidebarBloc? sidebarBloc;
    if (data.accessedStudent == null && id != null) {
      sidebarBloc = _studentSidebarBloc([FeatureId.assessments, FeatureId.students]);
    } else if (data.accessedStudent != null && id == null) {
      sidebarBloc = _studentSidebarBloc();
    }

    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        data.copyWith(
          accessedStudentId: () => id,
          sidebarBloc: sidebarBloc,
        ),
      ),
    );
    data.classStudentsBloc.setSelectedStudent(id);
  }

  Future<void> refreshClass(String id) async {
    final data = state.data!;
    final targetClass = await _repo.getClassItemInfo(id).map((ok) => ok.updatedClass).unwrap();
    final index = data.classes.indexWhere((e) => e.id == id);
    if (index != -1) {
      emit(
        AsyncSnapshot.withData(
          ConnectionState.active,
          TeacherLayoutState(
            initialRoute: data.initialRoute,
            rootUser: data.rootUser,
            isSidebarHidden: data.isSidebarHidden,
            classes: [...data.classes]..replaceRange(
                index,
                index + 1,
                [
                  ClassItemInfo(
                    id: targetClass.id,
                    name: targetClass.name,
                    code: targetClass.code,
                    hasStudents: data.classes[index].hasStudents,
                  ),
                ],
              ),
            accessedClassId: id,
            accessedStudentId: data.accessedStudentId,
            sidebarBloc: data.sidebarBloc,
            classStudentsBloc: data.classStudentsBloc,
            routes: data.routes,
          ),
        ),
      );
    }
  }

  Future<void> addClass(String newClassId) async {
    clearTopicAndSubtopicId();
    final data = state.data!;
    return _repo.getNewClass(newClassId).when(
          ok: (ok) {
            classInfoCache.setClassId(newClassId);
            final newClass = ok.newClass;
            final newState = data.copyWith(
              accessedClassId: () => newClassId,
              accessedStudentId: () => null,
              classes: [
                ...data.classes,
                ClassItemInfo(
                  id: newClass.id,
                  name: newClass.name,
                  code: newClass.code,
                  hasStudents: newClass.newClassStudents.isNotEmpty,
                ),
              ],
              sidebarBloc: _studentSidebarBloc(),
            );
            emit(
              AsyncSnapshot.withData(
                ConnectionState.active,
                newState,
              ),
            );
            _subscribeToStudentsBloc(newClassId);
          },
          err: log.e,
        );
  }

  @override
  Future<void> close() {
    _studentsBlocSub?.cancel();
    _classStudentsBloc?.close();
    return super.close();
  }

  void _subscribeToStudentsBloc(String classId) {
    _studentsBlocSub?.cancel();
    _studentsBlocSub = _classStudentsBloc!.stream.listen(
      (event) => _onStudentsUpdated(
        event,
        classId,
      ),
    );
  }

  SidebarBloc _studentSidebarBloc([List<FeatureId> exclude = const []]) => SidebarBloc(
        features.where((e) => !exclude.contains(e.id)).map((e) {
          if (e.id == FeatureId.statistics || e.id == FeatureId.learningTasks) {
            return toSidebarItemBloc(e, locked: true, selectStrategy: EmptySelectStrategy());
          }

          return toSidebarItemBloc(e);
        }).toList(),
      );

  void _onStudentsUpdated(
    AsyncSnapshot<ClassStudentsState> event,
    String classId,
  ) {
    if (event.data == null || state.data == null) return;
    final data = state.data!;
    final classStudentsState = event.data!;
    final targetClassIndex = data.classes.indexWhere((e) => e.id == classId);
    final targetClass = data.classes[targetClassIndex];
    final students = classStudentsState.students;
    if (students == null) return;

    configurer.hasStudents = students.isNotEmpty;
    if (students.isNotEmpty == targetClass.hasStudents) return;

    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        data.copyWith(
          classes: [...data.classes]..[targetClassIndex] =
              targetClass.copyWith(hasStudents: classStudentsState.students?.isNotEmpty),
          sidebarBloc: students.isEmpty ? _studentSidebarBloc() : null,
        ),
      ),
    );
  }
}
