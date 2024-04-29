import 'package:flutter/material.dart';

class OpacityAnimationsPage extends StatefulWidget {
  const OpacityAnimationsPage({super.key});

  @override
  State<OpacityAnimationsPage> createState() => OpacityAnimationsState();
}

class OpacityAnimationsState extends State<OpacityAnimationsPage> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedOpacity')),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          child: const Icon(
            Icons.logo_dev,
            size: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeOpacity,
        child: const Icon(Icons.add),
      ),
    );
  }
}
