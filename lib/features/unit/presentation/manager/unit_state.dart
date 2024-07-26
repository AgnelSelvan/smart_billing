part of 'unit_bloc.dart';

class UnitState extends Equatable {
  final List<UnitEntity> allUnits;
  final UnitEntity? aUnit;
  const UnitState({
    this.allUnits = const [],
    this.aUnit,
  });

  @override
  List<Object> get props => [];

  UnitState copyWith({
    List<UnitEntity>? allUnits,
    UnitEntity? aUnit,
  }) {
    return UnitState(
      allUnits: allUnits ?? this.allUnits,
      aUnit: aUnit ?? this.aUnit,
    );
  }

  UnitError emitError(Failure error) {
    return UnitError(
      message: error,
      allUnits: allUnits,
      aUnit: aUnit,
    );
  }

  UnitLoaded emitLoaded() {
    return UnitLoaded(
      allUnits: allUnits,
      aUnit: aUnit,
    );
  }
}

class UnitError extends UnitState {
  final Failure message;
  const UnitError({
    super.aUnit,
    super.allUnits,
    required this.message,
  });
}

class UnitLoading extends UnitState {
  const UnitLoading({
    super.aUnit,
    super.allUnits,
  });
}


class UnitLoaded extends UnitState {
  const UnitLoaded({
    super.aUnit,
    super.allUnits,
  });
}
