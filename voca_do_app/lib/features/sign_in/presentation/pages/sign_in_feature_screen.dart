import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/common/enums/role_enum.dart';
import 'package:voca_do_app/core/constants/app_colors.dart';
import 'package:voca_do_app/core/extensions/context_extensions.dart';
import 'package:voca_do_app/core/extensions/font_extensions.dart';
import 'package:voca_do_app/core/navigation/routers.dart';
import 'package:voca_do_app/core/utils/validators.dart';
import 'package:voca_do_app/core/widgets/text_field_widget.dart';
import 'package:voca_do_app/features/sign_in/presentation/cubit/sign_in_cubit.dart';
import 'package:voca_do_app/features/sign_in/presentation/cubit/sign_in_state.dart';

class SignInFeatureScreen extends HookWidget {
  const SignInFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<SignInCubit>();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBF5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Gap(16),
                  AnyImageView(
                    imagePath: 'assets/images/logo.png',
                    height: 30.sizeSW(),
                    width: 30.sizeSW(),
                  ),
                  Gap(16),
                  Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003D3D),
                    ),
                  ),
                  Gap(32),
                  TextFieldWidget(
                    controller: emailController,
                    label: 'Email',
                    validator: Validators.validateEmail,
                  ),
                  TextFieldWidget(
                    controller: passwordController,
                    label: 'Password',
                    validator: Validators.validatePassword,
                    isPassword: true,
                  ),
                  Gap(16),
                  BlocListener<SignInCubit, SignInState>(
                    listener: (context, state) {
                      context.hideLoading();
                      switch (state) {
                        case SignInLoadingState _:
                          context.showLoading();
                        case SignInSuccessState _:
                          if (state.user.role.toLowerCase() ==
                              Role.user.name.toLowerCase()) {
                            context.go(Routes.userDashboard);
                          } else {
                            context.go(Routes.home);
                          }
                        case SignInErrorState _:
                          context.showSnackBar(state.message, isError: true);
                      }
                    },
                    child: FilledButton(
                      onPressed: () {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }
                        cubit.signInMethod(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: Color(0xFF003D3D),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: AppColors.surface,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(Routes.signUp);
                    },
                    child: Text(
                      "Don't have an account? sign up",
                      style: TextStyle(color: Color(0xFF003D3D)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
