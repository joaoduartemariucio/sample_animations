// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_animations/app/router/app_router.dart';
import 'package:sample_animations/modules/main/cubit/main_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MainCubit(),
      child: const MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample animations')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Hello to sample animations project',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32),
            ),
            _spacing(height: 52),
            ElevatedButton(
              onPressed: () => context.push(Routes.textAnimations.path),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
              ),
              child: const Text('AnimatedDefaultTextStyle'),
            ),
            _spacing(),
            ElevatedButton(
              onPressed: () => context.push(Routes.listAnimations.path),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
              ),
              child: const Text('AnimatedList'),
            ),
            _spacing(),
            ElevatedButton(
              onPressed: () => context.push(Routes.opacityAnimations.path),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
              ),
              child: const Text('AnimatedOpacity'),
            ),
            _spacing(),
            ElevatedButton(
              onPressed: () => context.push(Routes.positionedAnimations.path),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
              ),
              child: const Text('AnimatedPositioned'),
            ),
            _spacing(),
            ElevatedButton(
              onPressed: () => context.push(Routes.sizeAnimations.path),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
              ),
              child: const Text('AnimatedSize'),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _spacing({double? height}) {
    return SizedBox(
      height: height ?? 16,
    );
  }
}
