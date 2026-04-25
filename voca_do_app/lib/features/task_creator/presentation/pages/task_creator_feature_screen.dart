import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:voca_do_app/core/widgets/loading_widget.dart';
import 'package:voca_do_app/features/task_creator/presentation/cubit/task_creator_cubit.dart';
import 'package:voca_do_app/features/task_creator/presentation/cubit/task_creator_state.dart';

class TaskCreatorFeatureScreen extends StatelessWidget {
  const TaskCreatorFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task Creator'), centerTitle: true),
      body: BlocBuilder<TaskCreatorCubit, TaskCreatorState>(
        builder: (context, state) {
          final isRecording = state is TaskCreatorRecordingState;
          final isLoading = state is TaskCreatorLoadingState;

          String? text;
          if (state is TaskCreatorSuccessState) {
            text = state.transcript;
          }

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Gap(20),

                Text(
                  isRecording
                      ? "Recording..."
                      : isLoading
                      ? "Converting voice to text..."
                      : text != null
                      ? "Your text is ready"
                      : "Tap the mic to start recording",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const Gap(30),

                GestureDetector(
                  onTap: isLoading
                      ? null
                      : () {
                          if (isRecording) {
                            context
                                .read<TaskCreatorCubit>()
                                .stopRecordAndConvert();
                          } else {
                            context.read<TaskCreatorCubit>().startRecord();
                          }
                        },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isRecording ? 140 : 110,
                    height: isRecording ? 140 : 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: isRecording
                            ? [Colors.red, Colors.deepOrange]
                            : [Colors.deepPurple, Colors.blue],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: isRecording
                              ? Colors.red.withValues(alpha: 0.5)
                              : Colors.blue.withValues(alpha: 0.3),
                          blurRadius: isRecording ? 35 : 20,
                          spreadRadius: isRecording ? 8 : 3,
                        ),
                      ],
                    ),
                    child: Icon(
                      isRecording ? Icons.stop : Icons.mic,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),
                ),

                const Gap(20),

                if (isRecording)
                  const Text(
                    "Tap again to stop recording",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                if (isLoading) ...[const Gap(20), LoadingWidget()],

                if (state is TaskCreatorErrorState) ...[
                  const Gap(20),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],

                const Gap(30),

                if (text != null && text.isNotEmpty)
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.08),
                            blurRadius: 18,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.text_fields),
                              Gap(8),
                              Text(
                                "Result Text",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          const Gap(14),

                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                                text,
                                style: const TextStyle(
                                  fontSize: 16,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),

                          const Gap(16),

                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () async {
                                    final confirm = await showDialog<bool>(
                                      context: context,
                                      builder: (dialogContext) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          title: const Row(
                                            children: [
                                              Icon(
                                                Icons.warning_amber_rounded,
                                                color: Colors.red,
                                              ),
                                              Gap(8),
                                              Text("Delete text?"),
                                            ],
                                          ),
                                          content: const Text(
                                            "Are you sure you want to delete this text?",
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(
                                                  dialogContext,
                                                  false,
                                                );
                                              },
                                              child: const Text("Cancel"),
                                            ),
                                            ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(
                                                  dialogContext,
                                                  true,
                                                );
                                              },
                                              icon: const Icon(Icons.delete),
                                              label: const Text("Delete"),
                                            ),
                                          ],
                                        );
                                      },
                                    );

                                    if (confirm == true && context.mounted) {
                                      context
                                          .read<TaskCreatorCubit>()
                                          .clearText();
                                    }
                                  },
                                  icon: const Icon(Icons.delete),
                                  label: const Text("Delete"),
                                ),
                              ),

                              const Gap(8),

                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    context
                                        .read<TaskCreatorCubit>()
                                        .retryRecord();
                                  },
                                  icon: const Icon(Icons.replay),
                                  label: const Text("Retry"),
                                ),
                              ),

                              const Gap(8),

                              Expanded(
                                child: ElevatedButton.icon(
                                  onPressed: () {
                               // where the text the transcript should go 
                                    // context.push(Routes.nextPage, extra: text);
                                  },
                                  icon: const Icon(Icons.check),
                                  label: const Text("Use"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
