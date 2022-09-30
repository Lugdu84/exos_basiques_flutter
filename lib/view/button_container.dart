import 'package:flutter/material.dart';

Container buttonContainer({IconData? icon, String? text}) {
  return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      height: 50,
      child: (icon == null)
          ? Center(
              child: Text(
              text ?? "",
              style: const TextStyle(color: Colors.white),
            ))
          : Icon(
              icon,
              color: Colors.white,
            ));
}
