import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:voca_do_app/core/widgets/loading_widget.dart';
import 'package:voca_do_app/features/sub/task_generator/presentation/cubit/task_generator_cubit.dart';
import 'package:voca_do_app/features/sub/task_generator/presentation/cubit/task_generator_state.dart';

class TaskGeneratorFeatureWidget extends StatelessWidget {
  const TaskGeneratorFeatureWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskGeneratorCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<TaskGeneratorCubit>();
          return Column(
            children: [
              BlocBuilder<TaskGeneratorCubit, TaskGeneratorState>(
                builder: (context, state) {
                  switch (state) {
                    case TaskGeneratorLoadingState _:
                      return LoadingWidget();
                    case TaskGeneratorSuccessState _:
                      return Column(
                        children: [
                          Text(state.task.task),
                          Text(state.task.assignee ?? 'No assignee'),
                          Text(state.task.dueDate ?? 'No due date'),
                        ],
                      );
                    case TaskGeneratorErrorState _:
                      return Center(
                        child: Text(
                          state.message,
                          style: TextStyle(color: Colors.red),
                        ),
                      );
                    default:
                      return SizedBox.shrink();
                  }
                },
              ),
              FilledButton(
                onPressed: () {
                  cubit.parseTaskWithAi(
                    transcription:
                        "We need to deliver the weekend project by tomorrow Sunday 10 am 26 april and that is Hanoof's responsibility",
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFF003D3D),
                  fixedSize: Size(150, 45),
                ),
                child: Text("Generate Task"),
              ),
            ],
          );
        },
      ),
    );
  }
}
