import 'package:exo_basiques/view/friends.dart';
import 'package:exo_basiques/view/header.dart';
import 'package:exo_basiques/view/posts.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Facbook profile",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [header(size: size), friends(size: size), Posts()],
          ),
        ));
  }
}
