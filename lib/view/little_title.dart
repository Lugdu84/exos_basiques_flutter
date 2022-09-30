import 'package:flutter/material.dart';

Widget littleTitle({required String text}) {
  return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ));
}

class LittleTitle extends StatelessWidget {
  final String text;
  const LittleTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ));
  }
}
