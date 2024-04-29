import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'opacity_animations_state.dart';

class OpacityAnimationsCubit extends Cubit<OpacityAnimationsState> {
  OpacityAnimationsCubit() : super(OpacityAnimationsInitial());
}
