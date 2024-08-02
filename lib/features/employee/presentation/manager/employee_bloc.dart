import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_billing/core/enum/search.dart';
import 'package:smart_billing/core/enum/sort.dart';
import 'package:smart_billing/core/errors/failure.dart';
import 'package:smart_billing/core/extension/dartz.dart';
import 'package:smart_billing/core/utils/usecase.dart';
import 'package:smart_billing/features/user/domain/entity/user_entity.dart';
import 'package:smart_billing/features/user/domain/usecase/add_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/delete_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/get_all_user_by_search.dart';
import 'package:smart_billing/features/user/domain/usecase/get_all_user_usecase.dart';
import 'package:smart_billing/features/user/domain/usecase/update_user_usecase.dart';

part 'employee_event.dart';
part 'employee_state.dart';

@injectable
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final formKey = GlobalKey<FormBuilderState>();
  final AddUserUseCase addUserUseCase;
  final GetAllUserUseCase getAllUserUseCase;
  final GetAllUserBySearchUseCase getAllUserBySearchUseCase;
  final DeleteUserUseCase deleteUserUseCase;
  final UpdateUserUseCase updateUserUseCase;
  EmployeeBloc(
    this.addUserUseCase,
    this.getAllUserUseCase,
    this.getAllUserBySearchUseCase,
    this.deleteUserUseCase,
    this.updateUserUseCase,
  ) : super(const EmployeeState(userEntities: [])) {
    on<AddEmployeeEvent>((event, emit) async {
      final response = await addUserUseCase.call(event.addUserParams);
      if (response.isLeft()) {
        emit(state.emitError(response.asLeft()));
      } else {
        emit(state.emitAddState(
          userEntity: response.asRight(),
        ));
        add(const GetAllEmployeeEvent());
      }
    });

    on<UpdateEmployeeEvent>((event, emit) async {
      final response = await updateUserUseCase.call(event.addUserParams);
      if (response.isLeft()) {
        emit(state.emitError(response.asLeft()));
      } else {
        emit(state.emitAddState(
          userEntity: response.asRight(),
        ));
        add(const GetAllEmployeeEvent());
      }
    });
    on<DeleteEmployeeEvent>((event, emit) async {
      final response = await deleteUserUseCase.call(event.userId);

      if (response.isLeft()) {
        emit(state.emitError(response.asLeft()));
      } else {
        emit(state.emitAddState(
          userEntity: response.asRight(),
        ));
        add(const GetAllEmployeeEvent());
      }
    });

    on<GetAllEmployeeEvent>((event, emit) async {
      final response = await getAllUserUseCase.call(NoParams());
      if (response.isLeft()) {
        emit(state.emitError(response.asLeft()));
      } else {
        formKey.currentState?.patchValue({
          'employeeCode': (response.asRight().length + 1).toString(),
        });
        emit(state.emitLoaded(
          userEntities: response.asRight(),
        ));
      }
    });

    on<UpdateEmployeeListingBasedOnSearchAndSortEvent>((event, emit) async {
      final response = getAllUserBySearchUseCase
          .call((event.search, event.searchCategory, event.sortBy));
      if (response.isLeft()) {
        emit(state.emitError(response.asLeft()));
      } else {
        emit(state.emitLoaded(
          userEntities: response.asRight(),
          searchCategory: event.searchCategory,
          sortBy: event.sortBy,
        ));
      }
    });
  }
}
