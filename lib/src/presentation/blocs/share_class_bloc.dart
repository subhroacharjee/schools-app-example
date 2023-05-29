import 'package:core/di.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareClassState with EquatableMixin {
  ShareClassState.dev() : classCodeBaseUrl = 'schools.tutero.dev/join';
  ShareClassState.prod() : classCodeBaseUrl = 'schools.tutero.com/join';

  final String classCodeBaseUrl;
  @override
  List<Object?> get props => [classCodeBaseUrl];
}

class ShareClassBloc extends Cubit<ShareClassState> {
  ShareClassBloc()
      : super(
          currentEnv == Env.prod ? ShareClassState.prod() : ShareClassState.dev(),
        );
}
