import 'package:voca_do_app/features/home/domain/entities/home_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    required int newTasks,
    required int inProgressTasks,
    required int lateTasks,
    
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, Object?> json) => _$HomeModelFromJson(json);
}



extension HomeModelMapper on HomeModel {
  HomeEntity toEntity() {
    return HomeEntity(newTasks: newTasks,
     inProgressTasks: inProgressTasks, 
     lateTasks: lateTasks);
  }
  }
