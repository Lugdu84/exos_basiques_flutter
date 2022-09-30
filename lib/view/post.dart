import 'package:exo_basiques/view/profile_image.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String time;
  final String imageName;
  final String desc;
  final int likes;
  final int comments;

  const Post(
      {required this.time,
      required this.imageName,
      required this.desc,
      this.likes = 0,
      this.comments = 0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(225, 225, 225, 1)),
        child: Column(
          children: [
            Row(
              children: [
                profilePicture(radius: 20),
                const Padding(padding: EdgeInsets.only(left: 5)),
                const Text("David Grammatico"),
                const Spacer(),
                Text(
                  "Il y a $time",
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Image.asset(
                  "images/$imageName",
                  fit: BoxFit.cover,
                )),
            Text(
              desc,
              style: const TextStyle(color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.favorite),
                Text("$likes likes"),
                const Icon(Icons.comment),
                Text("$comments commentaires")
              ],
            )
          ],
        ));
  }
}
