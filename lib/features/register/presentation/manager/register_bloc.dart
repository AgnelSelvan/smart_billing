import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/extension/dartz.dart';
import 'package:smart_billing/features/company/domain/entity/company_entity.dart';
import 'package:smart_billing/features/company/domain/usecase/add_company_usecase.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/delete_user_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AddUserUseCase addUserUseCase;
  final DeleteUserUseCase deleteUserUseCase;
  final AddCompanyUseCase addCompanyUseCase;
  final formKey = GlobalKey<FormBuilderState>();

  RegisterBloc(
    this.addUserUseCase,
    this.addCompanyUseCase,
    this.deleteUserUseCase,
  ) : super(const RegisterLoading()) {
    on<AddOwnerDetailsAndRegisterCompanyEvent>((event, emit) async {
      final response = await addUserUseCase.call(event.addUserParams);
      if (response.isLeft()) {
        emit(state.emitError(response.asLeft()));
      } else {
        final companyResponse =
            await addCompanyUseCase.call(event.addCompanyParams);
        if (companyResponse.isLeft()) {
          await deleteUserUseCase
              .call(response.getOrElse(() => throw Exception()).id);
          emit(state.emitError(companyResponse.asLeft()));
        } else {
          emit(state.emitLoaded(
            ownerEntity: (response.asRight()),
            companyEntity: companyResponse.asRight(),
          ));
        }
      }
    });
  }
}
