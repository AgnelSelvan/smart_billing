import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/usecase/user_login.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserLoginUseCase userLoginUseCase;
  LoginBloc(this.userLoginUseCase) : super(const LoginLoading()) {
    on<HandleLoginEvent>((event, emit) async {
      userLoginUseCase.call((event.email, event.password)).fold(
        (l) {
          emit(state.emitError(l));
        },
        (r) {
          emit(
            state.emitLoaded(r),
          );
        },
      );
    });
  }
}
