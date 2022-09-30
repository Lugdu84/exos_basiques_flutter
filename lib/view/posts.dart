import 'package:exo_basiques/model/post.dart';
import 'package:exo_basiques/view/post_card.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final List<Post> posts = [
    Post(
        name: "David Grammatico",
        time: "5 minutes",
        imageName: "playa.jpg",
        desc: "Super souvenir de la plage ..."),
    Post(
        name: "David Grammatico",
        time: "2 jours",
        imageName: "mountain.jpg",
        desc: "La montagne ça vous gagne",
        likes: 10,
        comments: 1),
    Post(
        name: "David Grammatico",
        time: "2 heures",
        imageName: "work.jpg",
        desc: "Retour au taff ... Que c'est dur",
        likes: 250,
        comments: 45)
  ];

  Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: allPosts());
  }

  List<Widget> allPosts() {
    List<Widget> children = [];
    for (var post in posts) {
      children.add(PostCard(post: post));
    }
    return children;
  }
}
