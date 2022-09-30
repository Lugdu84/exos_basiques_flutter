import 'package:exo_basiques/model/post.dart';
import 'package:exo_basiques/view/profile_image.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({required this.post, Key? key}) : super(key: key);

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
                Text(post.name),
                const Spacer(),
                Text(
                  post.setTime(),
                  style: const TextStyle(color: Colors.blue),
                )
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Image.asset(
                  "images/${post.imageName}",
                  fit: BoxFit.cover,
                )),
            Text(
              post.desc,
              style: const TextStyle(color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.favorite),
                Text(post.setLikes()),
                const Icon(Icons.comment),
                Text(post.setComments())
              ],
            )
          ],
        ));
  }
}
