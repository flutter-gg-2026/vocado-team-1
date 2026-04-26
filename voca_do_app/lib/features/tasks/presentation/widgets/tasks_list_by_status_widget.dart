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
          final now = DateTime.now();

          final filteredTasks = state.tasks.where((task) {
            final dueDate = task.dueDate == null
                ? null
                : DateTime.tryParse(task.dueDate!);

            final isLate =
                dueDate != null &&
                dueDate.isBefore(now) &&
                task.status != 'Completed';

            if (status == 'Late') {
              return isLate;
            }

            return task.status == status && !isLate;
          }).toList();

          return ListView.builder(
            itemCount: filteredTasks.length,
            itemBuilder: (context, index) {
              final task = filteredTasks[index];

              final dueDate = task.dueDate == null
                  ? null
                  : DateTime.tryParse(task.dueDate!);

              final isLate =
                  dueDate != null &&
                  dueDate.isBefore(DateTime.now()) &&
                  task.status != 'Completed';

              return Card(
                child: ListTile(
                  onTap: () {
                    context.push(Routes.taskDetails, extra: task);
                  },
                  title: Text(task.title),
                  subtitle: Text(task.description),

                  trailing: Text(isLate ? 'Late' : task.status),
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
