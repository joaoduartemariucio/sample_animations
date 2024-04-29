import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'size_animations_state.dart';

class SizeAnimationsCubit extends Cubit<SizeAnimationsState> {
  SizeAnimationsCubit() : super(SizeAnimationsInitial());
}
