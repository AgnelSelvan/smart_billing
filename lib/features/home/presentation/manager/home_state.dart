part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<HomeEntity> allHomes;
  final HomeEntity? aHome;
  const HomeState({
    this.allHomes = const [],
    this.aHome,
  });

  @override
  List<Object> get props => [];

  HomeState copyWith({
    List<HomeEntity>? allHomes,
    HomeEntity? aHome,
  }) {
    return HomeState(
      allHomes: allHomes ?? this.allHomes,
      aHome: aHome ?? this.aHome,
    );
  }

  HomeError emitError(Failure error) {
    return HomeError(
      message: error,
      allHomes: allHomes,
      aHome: aHome,
    );
  }

  HomeLoaded emitLoaded() {
    return HomeLoaded(
      allHomes: allHomes,
      aHome: aHome,
    );
  }
}

class HomeError extends HomeState {
  final Failure message;
  const HomeError({
    super.aHome,
    super.allHomes,
    required this.message,
  });
}

class HomeLoading extends HomeState {
  const HomeLoading({
    super.aHome,
    super.allHomes,
  });
}


class HomeLoaded extends HomeState {
  const HomeLoaded({
    super.aHome,
    super.allHomes,
  });
}
