import 'package:equatable/equatable.dart';

abstract class TestUserHomeState extends Equatable {
  const TestUserHomeState();

  @override
  List<Object?> get props => [];
}

class TestUserHomeInitialState extends TestUserHomeState {}
class TestUserHomeSuccessState extends TestUserHomeState {}

class TestUserHomeErrorState extends TestUserHomeState {
  final String message;
  const TestUserHomeErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

