import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/usecases/user/current_user.dart';
import 'package:core/domain/usecases/user_id/user_id_state.dart';
import 'package:core_flutter/presentation/layout/layout_state_machine.dart';
import 'package:core_flutter/presentation/shell/navigation/route_info.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schools_app/src/domain/graphql/onboarding.graphql.repository.dart';
import 'package:schools_app/src/features/features.dart';
import 'package:schools_app/src/presentation/blocs/student_active_test_bloc.dart';
import 'package:schools_app/src/presentation/layout/helpers.dart';
import 'package:schools_app/src/presentation/layout/nodes/schools_layout_node.dart';
import 'package:schools_app/src/presentation/layout/routes.dart';
import 'package:schools_app/src/presentation/layout/schools_layout_state.dart';
import 'package:schools_app/src/presentation/sidebar/sidebar_bloc.dart';

class StudentLayoutNode extends SchoolsLayoutNode<StudentLayoutState>
    with SchoolsLayoutNodeRetryMixin<StudentLayoutState> {
  StudentLayoutNode() {
    enableRetry();
  }

  final _repo = OnboardingRepository();

  @override
  SchoolsLayoutType get layoutType => SchoolsLayoutType.student;

  @override
  Map<FeatureId, SimpleRouteInfo> get featureToRoute => {FeatureId.curriculum: Routes.curriculum};

  @override
  Future<SimpleRouteInfo> initialRoute() async {
    final userId = emulatedUserId().toNullable();
    final studentClasses =
        (await _repo.getStudentClasses(userId!)).unwrap().getStudentClasses.studentClasses;

    if (studentClasses.isEmpty) {
      return const SimpleRouteInfo(title: 'Join Tutero', blueprint: '/join');
    }
    return const SimpleRouteInfo(title: 'Maths Platform', blueprint: '/curriculum');
  }

  @override
  Future<void> retriedResolve() async {
    final user = await GetCurrentUser(emulatedUserId)().unwrap();
    emit(
      AsyncSnapshot.withData(
        ConnectionState.active,
        StudentLayoutState(
          initialRoute: await initialRoute(),
          rootUser: AccessibleRootUser(
            userId: user.id,
            firstName: user.firstName ?? '',
            lastName: user.lastName ?? '',
            additionalInfo: '',
            profileImage: user.profileImage,
            parentId: null,
          ),
          isSidebarHidden: false,
          sidebarBloc: SidebarBloc(features.map(toSidebarItemBloc).toList()),
          routes: [
            ...Routes.studentRoutes,
          ],
          activeTestBloc: StudentActiveTestBloc(),
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await state.data?.activeTestBloc.close();
    return super.close();
  }
}
