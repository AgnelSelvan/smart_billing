import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/features/company/domain/usecase/get_my_own_company.dart';

part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetMyOwnCompanyUsecase getMyOwnCompanyUsecase;
  SplashBloc(this.getMyOwnCompanyUsecase) : super(const SplashLoading()) {
    on<GetOwnCompanyEvent>(
      (event, emit) {
        final response = getMyOwnCompanyUsecase();
        response.fold((l) => emit(const RegisterCompanyState()),
            (companyEntity) => emit(const SplashLoaded()));
      },
    );
  }
}
