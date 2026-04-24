import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/common/enums/role_enum.dart';
import 'package:voca_do_app/core/constants/app_colors.dart';
import 'package:voca_do_app/core/extensions/font_extensions.dart';
import 'package:voca_do_app/core/navigation/routers.dart';
import 'package:voca_do_app/core/utils/validators.dart';
import 'package:voca_do_app/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:voca_do_app/core/widgets/text_field_widget.dart';

class SignUpFeatureScreen extends HookWidget {
  const SignUpFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final _ = context.read<SignUpCubit>();
    final nameController = useTextEditingController();
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
                    "Sign up",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003D3D),
                    ),
                  ),
                  Gap(32),
                  TextFieldWidget(
                    controller: nameController,
                    label: 'Full Name',
                    validator: Validators.validateRequired,
                  ),
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
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text("Create account as"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField(
                          items: [
                            DropdownMenuItem(
                              value: Role.user,
                              child: Text(Role.user.name),
                            ),
                            DropdownMenuItem(
                              value: Role.admin,
                              child: Text(Role.admin.name),
                            ),
                          ],
                          onChanged: (value) {},
                          initialValue: Role.user,
                          elevation: 2,
                        ),
                      ),
                    ],
                  ),
                  FilledButton(
                    onPressed: () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Color(0xFF003D3D),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: AppColors.surface,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.go(Routes.signIn);
                    },
                    child: Text(
                      "Already have an account? sign in",
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
