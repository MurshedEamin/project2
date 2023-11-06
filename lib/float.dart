import 'package:flutter/material.dart';

class MyFloat extends StatefulWidget {
  const MyFloat({super.key});

  @override
  State<MyFloat> createState() => _MyFloatState();
}

class _MyFloatState extends State<MyFloat> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blueGrey,
      onPressed: (){},
      child: const Icon(Icons.add),
    );
  }
}
