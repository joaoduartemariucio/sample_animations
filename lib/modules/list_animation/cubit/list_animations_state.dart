part of 'list_animations_cubit.dart';

class ListAnimationsState {
  ListAnimationsState({required this.items});

  factory ListAnimationsState.initial() {
    return ListAnimationsState(
      items: [
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
        'Item 6',
        'Item 7',
        'Item 8',
        'Item 9',
        'Item 10',
      ],
    );
  }

  List<String> items;

  ListAnimationsState copyWith({List<String>? items}) {
    return ListAnimationsState(
      items: items ?? this.items,
    );
  }
}
