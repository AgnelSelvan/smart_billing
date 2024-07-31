import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(widget: SizedBox())) {
    on<UpdateHomePageWidgetEvent>((event, emit) {
      emit(HomeState(widget: event.params ?? const SizedBox()));
    });
  }
}
