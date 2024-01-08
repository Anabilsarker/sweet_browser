import 'package:flutter/material.dart';
import 'package:sweet_browser/views/addressbar_utility.dart';
import 'package:sweet_browser/widgets/body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  AppBar appBar() {
    return AppBar(
      toolbarHeight: 80,
      elevation: 0,
      backgroundColor: const Color(0xFF3C3C3C),
      title: const AddressbarUtiliy(),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar(),
      body: const Body(),
    );
  }
}
