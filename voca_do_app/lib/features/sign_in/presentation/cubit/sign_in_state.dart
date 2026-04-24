import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object?> get props => [];
}

class SignInInitialState extends SignInState {}
class SignInSuccessState extends SignInState {}

class SignInErrorState extends SignInState {
  final String message;
  const SignInErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

