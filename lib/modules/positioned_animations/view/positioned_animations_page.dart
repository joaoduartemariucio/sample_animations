import 'package:flutter/material.dart';

class PositionedAnimationsPage extends StatefulWidget {
  const PositionedAnimationsPage({super.key});

  @override
  State<PositionedAnimationsPage> createState() => PositionedAnimationsState();
}

class PositionedAnimationsState extends State<PositionedAnimationsPage> {
  bool selected = false;

  void _changeSelection() {
    setState(() {
      selected = !selected;
      print(selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedPositioned')),
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              top: selected ? 50 : 500,
              left: selected ? 80 : 50,
              right: selected ? 50 : 80,
              bottom: selected ? 500 : 50,
              duration: const Duration(seconds: 2),
              curve: Curves.fastOutSlowIn,
              child: ColoredBox(
                color: Colors.blue,
                child: Center(
                  child: Icon(
                    Icons.logo_dev,
                    size: selected ? 200 : 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeSelection,
        child: const Icon(Icons.add),
      ),
    );
  }
}
