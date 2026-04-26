import 'package:equatable/equatable.dart';

abstract class TestAdminHomeState extends Equatable {
  const TestAdminHomeState();

  @override
  List<Object?> get props => [];
}

class TestAdminHomeInitialState extends TestAdminHomeState {}
class TestAdminHomeSuccessState extends TestAdminHomeState {}

class TestAdminHomeErrorState extends TestAdminHomeState {
  final String message;
  const TestAdminHomeErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

