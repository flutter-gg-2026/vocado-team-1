import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/sub/sign_out/presentation/pages/sign_out_feature_widget.dart';
import 'package:voca_do_app/features/test_user_home/presentation/cubit/test_user_home_cubit.dart';

class TestUserHomeFeatureScreen extends StatelessWidget {
  const TestUserHomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<TestUserHomeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('TestUserHome Feature Screen')),
      body: Column(children: [SignOutFeatureWidget()]),
    );
  }
}
