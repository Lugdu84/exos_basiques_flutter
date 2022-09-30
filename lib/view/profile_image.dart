import 'package:flutter/material.dart';

CircleAvatar profilImage({required String imageName, double radius = 60}) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: radius - 2,
      foregroundImage: AssetImage(imageName),
    ),
  );
}
