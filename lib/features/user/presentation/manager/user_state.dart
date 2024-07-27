part of 'user_bloc.dart';

class UserState extends Equatable {
  final List<UserEntity> allUsers;
  final UserEntity? aUser;
  const UserState({
    this.allUsers = const [],
    this.aUser,
  });

  @override
  List<Object> get props => [];

  UserState copyWith({
    List<UserEntity>? allUsers,
    UserEntity? aUser,
  }) {
    return UserState(
      allUsers: allUsers ?? this.allUsers,
      aUser: aUser ?? this.aUser,
    );
  }

  UserError emitError(Failure error) {
    return UserError(
      message: error,
      allUsers: allUsers,
      aUser: aUser,
    );
  }

  UserLoaded emitLoaded() {
    return UserLoaded(
      allUsers: allUsers,
      aUser: aUser,
    );
  }
}

class UserError extends UserState {
  final Failure message;
  const UserError({
    super.aUser,
    super.allUsers,
    required this.message,
  });
}

class UserLoading extends UserState {
  const UserLoading({
    super.aUser,
    super.allUsers,
  });
}


class UserLoaded extends UserState {
  const UserLoaded({
    super.aUser,
    super.allUsers,
  });
}
