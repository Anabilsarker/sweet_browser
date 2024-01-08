import 'package:flutter/material.dart';
import 'package:sweet_browser/styles/sk.dart';

class AddressbarUtiliy extends StatefulWidget {
  const AddressbarUtiliy({super.key});

  @override
  State<AddressbarUtiliy> createState() => _AddressbarUtiliyState();
}

class _AddressbarUtiliyState extends State<AddressbarUtiliy> {
  @override
  Widget build(BuildContext context) {
    return addressbarAndUtility();
  }

  Widget addressbarAndUtility() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        utility(),
      ],
    );
  }

  Widget utility() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        sk.outlinedButton(
          content: const Icon(Icons.arrow_left_rounded),
          width: 30,
          background: Colors.transparent,
          borderWidth: 0,
          borderColor: Colors.transparent,
          onPressed: shit,
        ),
        sk.outlinedButton(
          content: const Icon(Icons.arrow_right_rounded),
          width: 30,
          background: Colors.transparent,
          borderWidth: 0,
          borderColor: Colors.transparent,
          onPressed: shit,
        ),
        sk.outlinedButton(
          content: const Icon(Icons.refresh_rounded),
          width: 30,
          background: Colors.transparent,
          borderWidth: 0,
          borderColor: Colors.transparent,
          onPressed: shit,
        ),
        addressbar(),
      ],
    );
  }

  Widget addressbar() {
    return textField();
  }

  TextField textField() {
    return const TextField(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.start,
      decoration: InputDecoration(hintText: 'Click here to search'),
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Colors.white,
        overflow: TextOverflow.visible,
      ),
    );
  }

  void shit() {}
}
