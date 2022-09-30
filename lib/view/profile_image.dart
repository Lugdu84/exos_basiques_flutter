import 'package:flutter/material.dart';

Widget profilImage(
    {required String imageName, double sizePadding = 140, double radius = 60}) {
  return Padding(
    padding: EdgeInsets.only(top: sizePadding),
    child: CircleAvatar(
        radius: radius, backgroundColor: Colors.white, child: profilePicture()),
  );
}

CircleAvatar profilePicture(
    {double radius = 60, String imageName = "profile.jpg"}) {
  return CircleAvatar(
    radius: radius - 2,
    backgroundImage: AssetImage("images/$imageName"),
  );
}
