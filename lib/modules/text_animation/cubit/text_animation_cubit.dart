import 'package:bloc/bloc.dart';

class TextAnimationCubit extends Cubit<int> {
  TextAnimationCubit() : super(2);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
