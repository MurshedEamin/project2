import 'package:flutter/material.dart';
import 'package:practice/body.dart';
import 'package:practice/bot.dart';
import 'package:practice/drawer.dart';
import 'package:practice/float.dart';


class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contact"),
        backgroundColor: Colors.transparent,
      ),
      body: const MyBody(),
      endDrawer: const MyDrawer(),
      floatingActionButton: const MyFloat(),
      bottomNavigationBar: const MyBot(),

    );
  }
}
