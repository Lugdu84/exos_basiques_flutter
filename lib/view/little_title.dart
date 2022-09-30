import 'package:flutter/material.dart';

Widget littleTitle({required String text}) {
  return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ));
}
