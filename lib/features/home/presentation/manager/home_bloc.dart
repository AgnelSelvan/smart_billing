import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/home/domain/entity/home_entity.dart';
import 'package:smart_billing/features/home/domain/usecase/add_home_usecase.dart';
import 'package:smart_billing/features/home/domain/usecase/delete_home_usecase.dart';
import 'package:smart_billing/features/home/domain/usecase/get_a_home_usecase.dart';
import 'package:smart_billing/features/home/domain/usecase/get_all_home_usecase.dart';
import 'package:smart_billing/features/home/domain/usecase/update_home_usecase.dart';
import 'package:smart_billing/core/utils/usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AddHomeUseCase addHomeUseCase;
  final UpdateHomeUseCase updateHomeUseCase;
  final DeleteHomeUseCase deleteHomeUseCase;
  final GetAllHomeUseCase getAllHomeUseCase;
  final GetAHomeUseCase getAHomeUseCase;

  HomeBloc(this.addHomeUseCase, this.updateHomeUseCase, this.deleteHomeUseCase,
      this.getAllHomeUseCase, this.getAHomeUseCase)
      : super(const HomeLoading()) {
    on<GetAllHomesEvent>((event, emit) async {
      final response = await getAllHomeUseCase.call(NoParams());
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allHomes: r,
          ).emitLoaded(),
        ),
      );
    });

    on<GetAHomeEvent>((event, emit) async {
      final response = await getAHomeUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allHomes: state.allHomes,
            aHome: r,
          ),
        ),
      );
    });

    on<AddHomeEvent>((event, emit) async {
      final response = await addHomeUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllHomesEvent()),
      );
    });

    on<UpdateHomeEvent>((event, emit) async {
      final response = await updateHomeUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllHomesEvent()),
      );
    });

    on<DeleteHomeEvent>((event, emit) async {
      final response = await deleteHomeUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllHomesEvent()),
      );
    });
  }
}
