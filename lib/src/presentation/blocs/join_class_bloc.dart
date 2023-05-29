import 'package:accounts_library/presentation/accounts_library_configurer.dart';
import 'package:core/di.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schools_app/src/domain/configurers/schools_accounts_library_configurer.dart';

class JoinClassBloc extends Cubit<JoinClassState> {
  JoinClassBloc([String? code]) : super(JoinClassState(code: code)) {
    accountsConfigurer.joinedClassNotifier.addListener(checkJoinClassState);
  }

  final accountsConfigurer = gi<AccountsLibraryConfigurer>() as SchoolsAccountsLibraryConfigurer;

  void onCodeChanged(String? v) => emit(state.copyWith(code: v));

  Future<void> joinClass() async {
    if (state.code?.isNotEmpty ?? false) {
      await accountsConfigurer.joinClass(state.code);
    }
  }

  void checkJoinClassState() {
    final joined = accountsConfigurer.joinedClassNotifier.value;

    emit(JoinClassState(
      code: state.code,
      joined: joined ?? false,
      invalidCode: joined == false,
    ));
  }

  @override
  Future<void> close() {
    accountsConfigurer.joinedClassNotifier.removeListener(checkJoinClassState);
    return super.close();
  }
}

class JoinClassState with EquatableMixin {
  JoinClassState({
    this.code,
    this.joined = false,
    this.invalidCode = false,
  });

  final String? code;
  final bool joined;
  final bool invalidCode;

  @override
  List<Object?> get props => [code, joined, invalidCode];

  JoinClassState copyWith({
    String? code,
    bool? joined,
    bool? invalidCode,
    bool? signedIn,
  }) =>
      JoinClassState(
        code: code ?? this.code,
        joined: joined ?? this.joined,
        invalidCode: invalidCode ?? this.invalidCode,
      );
}
