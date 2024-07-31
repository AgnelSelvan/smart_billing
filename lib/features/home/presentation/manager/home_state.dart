part of 'home_bloc.dart';

class HomeState extends Equatable {
  final Widget widget;

  const HomeState({required this.widget});
  @override
  List<Object> get props => [widget];
}
