import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'list_animations_state.dart';

class ListAnimationsCubit extends Cubit<ListAnimationsState> {
  ListAnimationsCubit() : super(ListAnimationsState.initial());

  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  void addItem() {
    final newIndex = state.items.length;
    final newItem = 'Item ${newIndex + 1}';
    state.items.add(newItem);
    listKey.currentState!.insertItem(newIndex);
  }

  void removeItem(int index) {
    state.items.removeAt(index);
  }
}
