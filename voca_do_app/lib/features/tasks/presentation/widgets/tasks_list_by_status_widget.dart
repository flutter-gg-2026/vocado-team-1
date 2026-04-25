import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/navigation/routers.dart';
import 'package:voca_do_app/features/tasks/presentation/cubit/tasks_cubit.dart';
import 'package:voca_do_app/features/tasks/presentation/cubit/tasks_state.dart';

class TasksListByStatusWidget extends StatelessWidget {
  final String status;

  const TasksListByStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        if (state is TasksLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is TasksErrorState) {
          return Center(child: Text(state.message));
        }

        if (state is TasksSuccessState) {
          final filteredTasks = state.tasks
              .where((task) => task.status == status)
              .toList();

          return ListView.builder(
            itemCount: filteredTasks.length,
            itemBuilder: (context, index) {
              final task = filteredTasks[index];

              return Card(
                child: ListTile(
                  onTap: () {
                    context.push(Routes.taskDetails, extra: task);
                  },
                  title: Text(task.title),
                  subtitle: Text(task.description),
                  trailing: Text(task.status),
                ),
              );
            },
          );
        }

        return const SizedBox();
      },
    );
  }
}
