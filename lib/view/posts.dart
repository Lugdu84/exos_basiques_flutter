import 'package:exo_basiques/view/post.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Post(
            time: "5 minutes",
            imageName: "carnaval.jpg",
            desc:
                "Petit tour au magic world, on s'est bien amusé, et en plus il n'y avait pas grand monde. Le grand kifff !!"),
        Post(
          time: "2 jours",
          imageName: "mountain.jpg",
          desc: "La montagne ça vous gagne",
          likes: 10,
          comments: 15,
        ),
        Post(
          time: "2 heures",
          imageName: "work.jpg",
          desc: "Retour au taff ... Que c'est dur",
          likes: 300,
          comments: 80,
        )
      ],
    );
  }
}
