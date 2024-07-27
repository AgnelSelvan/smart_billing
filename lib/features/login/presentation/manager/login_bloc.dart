import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/login/domain/entity/login_entity.dart';
import 'package:smart_billing/features/login/domain/usecase/add_login_usecase.dart';
import 'package:smart_billing/features/login/domain/usecase/delete_login_usecase.dart';
import 'package:smart_billing/features/login/domain/usecase/get_a_login_usecase.dart';
import 'package:smart_billing/features/login/domain/usecase/get_all_login_usecase.dart';
import 'package:smart_billing/features/login/domain/usecase/update_login_usecase.dart';
import 'package:smart_billing/core/utils/usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AddLoginUseCase addLoginUseCase;
  final UpdateLoginUseCase updateLoginUseCase;
  final DeleteLoginUseCase deleteLoginUseCase;
  final GetAllLoginUseCase getAllLoginUseCase;
  final GetALoginUseCase getALoginUseCase;

  LoginBloc(this.addLoginUseCase, this.updateLoginUseCase, this.deleteLoginUseCase,
      this.getAllLoginUseCase, this.getALoginUseCase)
      : super(const LoginLoading()) {
    on<GetAllLoginsEvent>((event, emit) async {
      final response = await getAllLoginUseCase.call(NoParams());
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allLogins: r,
          ).emitLoaded(),
        ),
      );
    });

    on<GetALoginEvent>((event, emit) async {
      final response = await getALoginUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allLogins: state.allLogins,
            aLogin: r,
          ),
        ),
      );
    });

    on<AddLoginEvent>((event, emit) async {
      final response = await addLoginUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllLoginsEvent()),
      );
    });

    on<UpdateLoginEvent>((event, emit) async {
      final response = await updateLoginUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllLoginsEvent()),
      );
    });

    on<DeleteLoginEvent>((event, emit) async {
      final response = await deleteLoginUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllLoginsEvent()),
      );
    });
  }
}
