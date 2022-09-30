import 'package:exo_basiques/view/header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Basics",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(size: size),
            ],
          ),
        ));
  }
}
