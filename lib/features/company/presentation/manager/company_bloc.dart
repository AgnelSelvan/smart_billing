import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/usecase/add_company_usecase.dart';
import 'package:smart_billing/features/company/domain/usecase/delete_company_usecase.dart';
import 'package:smart_billing/features/company/domain/usecase/get_a_company_usecase.dart';
import 'package:smart_billing/features/company/domain/usecase/get_all_company_usecase.dart';
import 'package:smart_billing/features/company/domain/usecase/update_company_usecase.dart';
import 'package:smart_billing/core/utils/usecase.dart';

part 'company_event.dart';
part 'company_state.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  final AddCompanyUseCase addCompanyUseCase;
  final UpdateCompanyUseCase updateCompanyUseCase;
  final DeleteCompanyUseCase deleteCompanyUseCase;
  final GetAllCompanyUseCase getAllCompanyUseCase;
  final GetACompanyUseCase getACompanyUseCase;

  CompanyBloc(this.addCompanyUseCase, this.updateCompanyUseCase, this.deleteCompanyUseCase,
      this.getAllCompanyUseCase, this.getACompanyUseCase)
      : super(const CompanyLoading()) {
    on<GetAllCompanysEvent>((event, emit) async {
      final response = await getAllCompanyUseCase.call(NoParams());
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allCompanys: r,
          ).emitLoaded(),
        ),
      );
    });

    on<GetACompanyEvent>((event, emit) async {
      final response = await getACompanyUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => emit(
          state.copyWith(
            allCompanys: state.allCompanys,
            aCompany: r,
          ),
        ),
      );
    });

    on<AddCompanyEvent>((event, emit) async {
      final response = await addCompanyUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllCompanysEvent()),
      );
    });

    on<UpdateCompanyEvent>((event, emit) async {
      final response = await updateCompanyUseCase.call(event.params);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllCompanysEvent()),
      );
    });

    on<DeleteCompanyEvent>((event, emit) async {
      final response = await deleteCompanyUseCase.call(event.id);
      response.fold(
        (l) => emit(state.emitError(l)),
        (r) => add(GetAllCompanysEvent()),
      );
    });
  }
}
