import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/splash/presentation/cubit/splash_cubit.dart';

class SplashFeatureScreen extends StatelessWidget {
  const SplashFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
      final _ = context.read<SplashCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Splash Feature Screen')),
      body: Column(children: [
          
        ],
      ),
    );
  }
}
