import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/user/data/models/user_model.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/delete_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/get_a_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/get_all_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/update_user_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final AddUserUseCase addUserUseCase;
  final UpdateUserUseCase updateUserUseCase;
  final DeleteUserUseCase deleteUserUseCase;
  final GetAllUserUseCase getAllUserUseCase;
  final GetAUserUseCase getAUserUseCase;

  UserBloc(this.addUserUseCase, this.updateUserUseCase, this.deleteUserUseCase,
      this.getAllUserUseCase, this.getAUserUseCase)
      : super(const UserLoading()) {
    on<GetAllUsersEvent>((event, emit) async {
      final response = await getAllUserUseCase.call(NoParams());
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state
              .copyWith(
                allUsers: r,
              )
              .emitLoaded(),
        ),
      );
    });

    on<GetAUserEvent>((event, emit) async {
      final response = await getAUserUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allUsers: state.allUsers,
            aUser: r,
          ),
        ),
      );
    });

    on<AddUserEvent>((event, emit) async {
      final response = await addUserUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllUsersEvent()),
      );
    });

    on<UpdateUserEvent>((event, emit) async {
      final response = await updateUserUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllUsersEvent()),
      );
    });

    on<DeleteUserEvent>((event, emit) async {
      final response = await deleteUserUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllUsersEvent()),
      );
    });

    on<AddOwnerUserDetails>((event, emit) async {
      final response = await addUserUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllUsersEvent()),
      );
    });
  }
}
