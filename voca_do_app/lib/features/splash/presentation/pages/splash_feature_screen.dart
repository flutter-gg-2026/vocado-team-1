import 'package:any_image_view/any_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:voca_do_app/core/common/enums/role_enum.dart';
import 'package:voca_do_app/core/extensions/context_extensions.dart';
import 'package:voca_do_app/core/extensions/font_extensions.dart';
import 'package:voca_do_app/core/navigation/routers.dart';
import 'package:voca_do_app/core/widgets/loading_widget.dart';
import 'package:voca_do_app/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:voca_do_app/features/splash/presentation/cubit/splash_state.dart';

class SplashFeatureScreen extends StatelessWidget {
  const SplashFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<SplashCubit>();

    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) async {
          switch (state) {
            case SplashAuthenticatedState _:
              if (state.user.userRole?.toLowerCase() ==
                  Role.admin.name.toLowerCase()) {
                await Future.delayed(Duration(milliseconds: 2000));
                if (context.mounted) {
                  context.go(Routes.testAdminHome);
                }
              } else {
                context.go(Routes.testUserHome);
              }
            case SplashUnauthenticatedState _:
              await Future.delayed(Duration(milliseconds: 2000));
              if (context.mounted) {
                context.go(Routes.signUp);
              }
            case SplashErrorState _:
              context.showSnackBar(state.message, isError: true);
          }
        },
        child: SafeArea(
          child: Column(
            mainAxisAlignment: .center,
            spacing: 32,
            children: [
              Center(
                child: AnyImageView(
                  imagePath: 'assets/images/logo.png',
                  height: 30.sizeSW(),
                  width: 30.sizeSW(),
                ),
              ),
              Center(
                child: Text(
                  "VocaDo",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF003D3D),
                  ),
                ),
              ),
              Center(child: LoadingWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
