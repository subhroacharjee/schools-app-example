import 'dart:async';

import 'package:core/di.dart';
import 'package:core/domain/bloc/async_snapshot_cubit.dart';
import 'package:core/domain/usecases/user_id/root_user_id.dart';
import 'package:oxidized/oxidized.dart';
import 'package:schema/schema.dart';
import 'package:schools_app/src/domain/graphql/schools_app.graphql.repository.dart';
import 'package:schools_app/src/presentation/blocs/add_class_state.dart';

class AddClassBloc extends FutureAsyncSnapshotCubit<AddClassState> {
  AddClassBloc({required Function(String) onClassAdded}) : _onClassAdded = onClassAdded;
  final Function(String) _onClassAdded;

  final _repo = SchoolsAppRepository();

  @override
  FutureOr<AddClassState> resolve() => _repo
      .getYearTitles(null)
      .map(
        (ok) => AddClassState.initial(
          yearsMap: {
            // Only display years 3-10
            for (final y in ok.allYears.where((e) {
              final val = int.tryParse(e.title);
              return val != null && val >= 3 && val <= 10;
            }).toList()
              ..sort(
                (a, b) => int.parse(a.title).compareTo(
                  int.parse(b.title),
                ),
              ))
              y.id: y.title,
          },
        ),
      )
      .unwrap();

  void onNameChanged(String? v) => emitWithData(
        state.data!.copyWith(name: v),
      );

  void selectYear(String? v) => emitWithData(state.data!.copyWith(yearId: v));

  Future<bool> addClass() async {
    final data = state.data!;
    return _repo
        .addClass(
      AddClassInput(
        name: data.name!,
        yearID: data.yearId!,
      ),
      authenticatedUserId: rootUserId,
    )
        .when(
      ok: (ok) {
        _onClassAdded(ok.addClass.id);
        return true;
      },
      err: (e) {
        log.v('Error occured while trying to create a class');
        return false;
      },
    );
  }
}
