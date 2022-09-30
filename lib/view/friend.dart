import 'package:flutter/material.dart';

Widget friend(
    {required String name, required double width, required String imageName}) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "images/$imageName",
            width: width / 3.3,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Text(name),
    ],
  );
}

Widget friendTwo(
    {required String name, required double width, required String imageName}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 5, right: 5),
        width: width / 3.3,
        height: width / 3.3,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.grey)],
            image: DecorationImage(
                image: AssetImage("images/$imageName"), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)),
      ),
      Text(name)
    ],
  );
}
