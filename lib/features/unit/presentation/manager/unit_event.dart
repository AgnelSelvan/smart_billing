part of 'unit_bloc.dart';

class UnitEvent extends Equatable {
  const UnitEvent();

  @override
  List<Object> get props => [];
}

class AddUnitEvent extends UnitEvent {
  final AddUnitParams params;

  const AddUnitEvent({required this.params});
}

class UpdateUnitEvent extends UnitEvent {
  final UpdateUnitParams params;

  const UpdateUnitEvent({required this.params});
}

class DeleteUnitEvent extends UnitEvent {
  final String id;
  const DeleteUnitEvent({required this.id});
}

class GetAllUnitsEvent extends UnitEvent {}

class GetAUnitEvent extends UnitEvent {
  final String id;
  const GetAUnitEvent({required this.id});
}
