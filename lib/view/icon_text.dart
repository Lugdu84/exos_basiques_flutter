import 'package:flutter/material.dart';

Row iconText({required IconData icon, required String iconText}) {
  return Row(
    children: [
      Icon(icon),
      Padding(padding: const EdgeInsets.all(5), child: Text(iconText))
    ],
  );
}
