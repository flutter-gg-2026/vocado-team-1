import 'package:equatable/equatable.dart';

class ActiveUserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final String role;

  const ActiveUserEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
  });

  @override
  List<Object?> get props => [id, email, name, role];
}
