import 'package:equatable/equatable.dart';

class TaskCreatorEntity extends Equatable {
   final String transcript;

  const TaskCreatorEntity({
    required this.transcript,
  });

  @override
  List<Object?> get props => [transcript];
}
