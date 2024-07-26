part of 'home_bloc.dart';

class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class AddHomeEvent extends HomeEvent {
  final AddHomeParams params;

  const AddHomeEvent({required this.params});
}

class UpdateHomeEvent extends HomeEvent {
  final UpdateHomeParams params;

  const UpdateHomeEvent({required this.params});
}

class DeleteHomeEvent extends HomeEvent {
  final String id;
  const DeleteHomeEvent({required this.id});
}

class GetAllHomesEvent extends HomeEvent {}

class GetAHomeEvent extends HomeEvent {
  final String id;
  const GetAHomeEvent({required this.id});
}
