import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:voca_do_app/features/sub/sign_out/presentation/pages/sign_out_feature_widget.dart';
import 'package:voca_do_app/features/test_user_home/presentation/cubit/test_user_home_cubit.dart';
import 'package:voca_do_app/features/test_user_home/presentation/cubit/test_user_home_state.dart';
import 'package:voca_do_app/features/test_user_home/presentation/widgets/test_user_home_widget.dart';

class TestUserHomeFeatureScreen extends StatelessWidget {
  const TestUserHomeFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TestUserHomeCubit>().getTestUserHomeMethod();

    return Scaffold(
      backgroundColor: const Color(0xffF6F7FB),
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: BlocBuilder<TestUserHomeCubit, TestUserHomeState>(
        builder: (context, state) {

          if (state is TestUserHomeInitialState) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is TestUserHomeErrorState) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          if (state is TestUserHomeSuccessState) {
            final profile = state.profile;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 236, 232, 161),
                          Color.fromARGB(255, 240, 196, 146),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha:  0.12),
                          blurRadius: 18,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [

                        /// AVATAR
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          child: Text(
                            profile.userName.isNotEmpty
                                ? profile.userName[0].toUpperCase()
                                : '?',
                            style: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff6C63FF),
                            ),
                          ),
                        ),

                        const Gap(14),

                        /// NAME
                        Text(
                          profile.userName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const Gap(6),

                        /// ROLE
                        Text(
                          profile.roleName,
                          style: TextStyle(
                            color: Colors.white.withValues( alpha: 0.85),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Gap(24),

                  TestUserHomeWidget(
                    icon: Icons.email_outlined,
                    title: 'Email',
                    value: profile.emailName,
                  ),

            
                  TestUserHomeWidget(
                    icon: Icons.admin_panel_settings_outlined,
                    title: 'Role',
                    value: profile.roleName,
                  ),

                  const Gap(24),

                  const SignOutFeatureWidget(),
                ],
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}