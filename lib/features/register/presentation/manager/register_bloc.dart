import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/register/domain/entity/register_entity.dart';
import 'package:smart_billing/features/register/domain/usecase/add_register_usecase.dart';
import 'package:smart_billing/features/register/domain/usecase/delete_register_usecase.dart';
import 'package:smart_billing/features/register/domain/usecase/get_a_register_usecase.dart';
import 'package:smart_billing/features/register/domain/usecase/get_all_register_usecase.dart';
import 'package:smart_billing/features/register/domain/usecase/update_register_usecase.dart';
import 'package:smart_billing/core/utils/usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AddRegisterUseCase addRegisterUseCase;
  final UpdateRegisterUseCase updateRegisterUseCase;
  final DeleteRegisterUseCase deleteRegisterUseCase;
  final GetAllRegisterUseCase getAllRegisterUseCase;
  final GetARegisterUseCase getARegisterUseCase;

  RegisterBloc(this.addRegisterUseCase, this.updateRegisterUseCase, this.deleteRegisterUseCase,
      this.getAllRegisterUseCase, this.getARegisterUseCase)
      : super(const RegisterLoading()) {
    on<GetAllRegistersEvent>((event, emit) async {
      final response = await getAllRegisterUseCase.call(NoParams());
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allRegisters: r,
          ).emitLoaded(),
        ),
      );
    });

    on<GetARegisterEvent>((event, emit) async {
      final response = await getARegisterUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allRegisters: state.allRegisters,
            aRegister: r,
          ),
        ),
      );
    });

    on<AddRegisterEvent>((event, emit) async {
      final response = await addRegisterUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllRegistersEvent()),
      );
    });

    on<UpdateRegisterEvent>((event, emit) async {
      final response = await updateRegisterUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllRegistersEvent()),
      );
    });

    on<DeleteRegisterEvent>((event, emit) async {
      final response = await deleteRegisterUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllRegistersEvent()),
      );
    });
  }
}
