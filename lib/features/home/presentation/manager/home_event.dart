part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class UpdateHomePageWidgetEvent extends HomeEvent {
  final Widget? params;

  const UpdateHomePageWidgetEvent({this.params = const SizedBox()});
}
