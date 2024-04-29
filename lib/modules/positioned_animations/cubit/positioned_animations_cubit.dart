import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'positioned_animations_state.dart';

class PositionedAnimationsCubit extends Cubit<PositionedAnimationsState> {
  PositionedAnimationsCubit() : super(PositionedAnimationsInitial());
}
