import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/constants/app_colors.dart';
import 'package:voca_do_app/core/extensions/context_extensions.dart';
import 'package:voca_do_app/core/navigation/routers.dart';
import 'package:voca_do_app/features/sub/sign_out/presentation/cubit/sign_out_cubit.dart';
import 'package:voca_do_app/features/sub/sign_out/presentation/cubit/sign_out_state.dart';

class SignOutFeatureWidget extends StatelessWidget {
  const SignOutFeatureWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignOutCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<SignOutCubit>();
          return BlocListener<SignOutCubit, SignOutState>(
            listener: (context, state) {
              switch (state) {
                case SignOutSuccessState _:
                  context.go(Routes.splash);
                case SignOutErrorState _:
                  context.showSnackBar(state.message, isError: true);
              }
            },
            child: FilledButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) => AlertDialog(
                    title: Text("Confirm Sign out"),
                    content: Text("Are you sure you want to sign out?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.pop();
                          cubit.signOutMethod();
                        },
                        child: Text(
                          "Logout",
                          style: TextStyle(color: AppColors.error),
                        ),
                      ),
                    ],
                  ),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.error,
                fixedSize: Size(150, 45),
              ),
              child: Row(
                spacing: 8,
                mainAxisAlignment: .center,
                children: [
                  Icon(Icons.logout),
                  Text("Logout", style: TextStyle(fontWeight: .bold)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
