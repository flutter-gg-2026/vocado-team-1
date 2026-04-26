import 'package:equatable/equatable.dart';

class TestUserHomeEntity extends Equatable {
    final String id;
    final String userName;
    final String emailName;
     final String roleName;

  const TestUserHomeEntity({
      required  this.id,
    required this. userName,
    required this. emailName,
     required this. roleName,
  });

  @override
  List<Object?> get props => [userName, emailName, id,roleName];
}
