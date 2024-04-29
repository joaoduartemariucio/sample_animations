import 'package:flutter/material.dart';

class SizeAnimationsPage extends StatefulWidget {
  const SizeAnimationsPage({super.key});

  @override
  State<SizeAnimationsPage> createState() => SizeAnimationsState();
}

class SizeAnimationsState extends State<SizeAnimationsPage> {
  double _size = 50.0;
  bool _large = false;

  void _changeSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedSize')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ColoredBox(
                color: Colors.amberAccent,
                child: AnimatedSize(
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 1),
                  child: FlutterLogo(size: _size),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeSize,
        child: const Icon(Icons.add),
      ),
    );
  }
}
