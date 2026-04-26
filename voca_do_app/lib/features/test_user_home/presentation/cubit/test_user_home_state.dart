import 'package:equatable/equatable.dart';
import 'package:voca_do_app/features/test_user_home/domain/entities/test_user_home_entity.dart';

abstract class TestUserHomeState extends Equatable {
  const TestUserHomeState();

  @override
  List<Object?> get props => [];
}

class TestUserHomeInitialState extends TestUserHomeState {}

class TestUserHomeSuccessState extends TestUserHomeState {
final TestUserHomeEntity profile;

  TestUserHomeSuccessState({required this.profile});
    @override
  List<Object?> get props => [profile];


}

class TestUserHomeErrorState extends TestUserHomeState {
  final String message;
  const TestUserHomeErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

