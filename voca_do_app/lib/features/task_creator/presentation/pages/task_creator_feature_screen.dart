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
    final cubit = context.read<TaskCreatorCubit>();
    return Scaffold(
      backgroundColor: const Color(0xffF7F7FB),
      appBar: AppBar(
        title: const Text('Task Creator'),
        centerTitle: true,
        backgroundColor: const Color(0xffF7F7FB),
        elevation: 0,
      ),
      body: SafeArea(
        child: BlocBuilder<TaskCreatorCubit, TaskCreatorState>(
          builder: (context, state) {
            final isRecording = state is TaskCreatorRecordingState;
            final isLoading = state is TaskCreatorLoadingState;

            String? text;
            if (state is TaskCreatorSuccessState) {
              text = state.transcript;
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Gap(20),

                  Text(
                    isRecording
                        ? "Listening..."
                        : isLoading
                            ? "Processing your voice..."
                            : text != null
                                ? "Your text is ready"
                                : "Ready to create a task?",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const Gap(8),

                  Text(
                    isRecording
                        ? "Tap the card again when you finish speaking"
                        : isLoading
                            ? "Please wait while we convert it to text"
                            : "Tap the card and speak naturally",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const Gap(30),

                  GestureDetector(
                    onTap: isLoading
                        ? null
                        : () {
                            if (isRecording) {
                             
                          cubit.stopRecordAndConvert();
                            } else {
                             cubit.startRecord();
                            }
                          },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 48,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        gradient: LinearGradient(
                          colors: isRecording
                              ? [
                                  Colors.orange.shade400,
                                  Colors.red.shade300,
                                ]
                              : isLoading
                                  ? [
                                      Colors.grey.shade400,
                                      Colors.grey.shade300,
                                    ]
                                  : const [
                                      Color(0xff6C63FF),
                                      Color(0xff3F8CFF),
                                    ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: isRecording
                                ? Colors.red.withValues(alpha: 0.25)
                                : Colors.blue.withValues(alpha: 0.18),
                            blurRadius: 28,
                            offset: const Offset(0, 14),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 72,
                            height: 72,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.20),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              isRecording
                                  ? Icons.graphic_eq_rounded
                                  : isLoading
                                      ? Icons.hourglass_top_rounded
                                      : Icons.auto_awesome_rounded,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),

                          const Gap(18),

                          Text(
                            isRecording
                                ? "Listening..."
                                : isLoading
                                    ? "Processing..."
                                    : "Tap to Speak",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const Gap(10),

                          Text(
                            isRecording
                                ? "Speak now, then tap again to stop"
                                : isLoading
                                    ? "Converting your voice to text"
                                    : "Your voice will become a task text",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  if (isLoading) ...[
                    const Gap(28),
                    LoadingWidget(),
                  ],

                  if (state is TaskCreatorErrorState) ...[
                    const Gap(24),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.red.shade100),
                      ),
                      child: Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],

                  if (text != null && text.isNotEmpty) ...[
                    const Gap(30),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.78,
                        ),
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Color(0xff6C63FF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                            bottomLeft: Radius.circular(22),
                            bottomRight: Radius.circular(6),
                          ),
                        ),
                        child: Text(
                          text,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),

                    const Gap(14),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.78,
                        ),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                            bottomRight: Radius.circular(22),
                            bottomLeft: Radius.circular(6),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 14,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: const Text(
                          "Got it! You can use this text, delete it, or record again.",
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),

                    const Gap(24),

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
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    title: const Text("Delete text?"),
                                    content: const Text(
                                      "Are you sure you want to delete this text?",
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(dialogContext, false);
                                        },
                                        child: const Text("Cancel"),
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          foregroundColor: Colors.white,
                                        ),
                                        onPressed: () {
                                          Navigator.pop(dialogContext, true);
                                        },
                                        child: const Text("Delete"),
                                      ),
                                    ],
                                  );
                                },
                              );

                              if (confirm == true && context.mounted) {
                               cubit.clearText();
                              }
                            },
                            icon: const Icon(Icons.delete_outline_rounded),
                            label: const Text("Delete"),
                          ),
                        ),

                        const Gap(10),

                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {
                             cubit.retryRecord();
                            },
                            icon: const Icon(Icons.replay_rounded),
                            label: const Text("Retry"),
                          ),
                        ),

                        const Gap(10),

                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                            // here where the text should go 
                            },
                            icon: const Icon(Icons.check_rounded),
                            label: const Text("Use"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}