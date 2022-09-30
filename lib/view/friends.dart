import 'package:exo_basiques/view/friend.dart';
import 'package:exo_basiques/view/little_title.dart';
import 'package:flutter/material.dart';

Column friends({required Size size}) {
  Map<String, String> allFriends = {
    "Isabelle": "cat.jpg",
    "Aïcha": "cat.jpg",
    "Julie": "cat.jpg",
    "Marion": "cat.jpg",
  };
  List<Widget> children = [];
  allFriends.forEach(((key, value) {
    children.add(friendTwo(name: key, width: size.width, imageName: value));
  }));
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const LittleTitle(text: "Amis"),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: children),
      ),
      const Divider(
        thickness: 2,
      )
    ],
  );
}
