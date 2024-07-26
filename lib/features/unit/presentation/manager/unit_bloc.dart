import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/unit/domain/entity/unit_entity.dart';
import 'package:smart_billing/features/unit/domain/usecase/add_unit_usecase.dart';
import 'package:smart_billing/features/unit/domain/usecase/delete_unit_usecase.dart';
import 'package:smart_billing/features/unit/domain/usecase/get_a_unit_usecase.dart';
import 'package:smart_billing/features/unit/domain/usecase/get_all_unit_usecase.dart';
import 'package:smart_billing/features/unit/domain/usecase/update_unit_usecase.dart';
import 'package:smart_billing/core/utils/usecase.dart';

part 'unit_event.dart';
part 'unit_state.dart';

class UnitBloc extends Bloc<UnitEvent, UnitState> {
  final AddUnitUseCase addUnitUseCase;
  final UpdateUnitUseCase updateUnitUseCase;
  final DeleteUnitUseCase deleteUnitUseCase;
  final GetAllUnitUseCase getAllUnitUseCase;
  final GetAUnitUseCase getAUnitUseCase;

  UnitBloc(this.addUnitUseCase, this.updateUnitUseCase, this.deleteUnitUseCase,
      this.getAllUnitUseCase, this.getAUnitUseCase)
      : super(const UnitLoading()) {
    on<GetAllUnitsEvent>((event, emit) async {
      final response = await getAllUnitUseCase.call(NoParams());
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allUnits: r,
          ).emitLoaded(),
        ),
      );
    });

    on<GetAUnitEvent>((event, emit) async {
      final response = await getAUnitUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allUnits: state.allUnits,
            aUnit: r,
          ),
        ),
      );
    });

    on<AddUnitEvent>((event, emit) async {
      final response = await addUnitUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllUnitsEvent()),
      );
    });

    on<UpdateUnitEvent>((event, emit) async {
      final response = await updateUnitUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllUnitsEvent()),
      );
    });

    on<DeleteUnitEvent>((event, emit) async {
      final response = await deleteUnitUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllUnitsEvent()),
      );
    });
  }
}
