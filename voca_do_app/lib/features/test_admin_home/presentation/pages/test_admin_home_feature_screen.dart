import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voca_do_app/features/sub/sign_out/presentation/pages/sign_out_feature_widget.dart';
import 'package:voca_do_app/features/test_admin_home/presentation/cubit/test_admin_home_cubit.dart';

class TestAdminHomeFeatureScreen extends StatelessWidget {
  const TestAdminHomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _ = context.read<TestAdminHomeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('TestAdminHome Feature Screen')),
      body: Column(children: [SignOutFeatureWidget()]),
    );
  }
}
