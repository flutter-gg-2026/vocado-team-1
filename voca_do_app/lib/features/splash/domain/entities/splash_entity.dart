import 'package:equatable/equatable.dart';

class SplashEntity extends Equatable {
  final bool isLoggedIn;
  final String? userRole;

  const SplashEntity({
    required this.isLoggedIn,
    this.userRole,
  });

  @override
  List<Object?> get props => [isLoggedIn, userRole];
}
