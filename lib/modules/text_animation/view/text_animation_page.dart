import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_animations/modules/text_animation/counter.dart';

class TextAnimationPage extends StatelessWidget {
  const TextAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TextAnimationCubit(),
      child: const TextAnimationView(),
    );
  }
}

class TextAnimationView extends StatelessWidget {
  const TextAnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedDefaultTextStyle')),
      body: const Padding(
        padding: EdgeInsets.all(32),
        child: Center(
          child: CounterText(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<TextAnimationCubit>().increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => context.read<TextAnimationCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.select((TextAnimationCubit cubit) => cubit.state);
    return AnimatedDefaultTextStyle(
      curve: Curves.elasticInOut,
      style: TextStyle(
        fontWeight: (count > 6) ? FontWeight.w900 : FontWeight.normal,
        fontSize: count.toDouble() * 10,
      ),
      duration: const Duration(seconds: 2),
      child: Text(
        'O número atual é $count',
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
