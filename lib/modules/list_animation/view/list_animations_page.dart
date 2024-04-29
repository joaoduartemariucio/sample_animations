import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_animations/modules/list_animation/cubit/list_animations_cubit.dart';

class ListAnimationsPage extends StatelessWidget {
  const ListAnimationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ListAnimationsCubit(),
      child: const ListAnimationsView(),
    );
  }
}

class ListAnimationsView extends StatelessWidget {
  const ListAnimationsView({super.key});

  Widget buildItem(String item, Animation<double> animation) {
    return BlocBuilder<ListAnimationsCubit, ListAnimationsState>(
      builder: (context, state) {
        return SizeTransition(
          sizeFactor: animation,
          child: ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                final index = state.items.indexOf(item);
                context.read<ListAnimationsCubit>().removeItem(index);
                context
                    .read<ListAnimationsCubit>()
                    .listKey
                    .currentState!
                    .removeItem(
                      index,
                      (context, animation) => buildItem(item, animation),
                    );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListAnimationsCubit, ListAnimationsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text('AnimatedList')),
          body: AnimatedList(
            key: context.read<ListAnimationsCubit>().listKey,
            initialItemCount: state.items.length,
            itemBuilder: (context, index, animation) {
              return buildItem(state.items[index], animation);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: context.read<ListAnimationsCubit>().addItem,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
