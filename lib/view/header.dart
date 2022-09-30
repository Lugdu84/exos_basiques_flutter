import 'package:exo_basiques/view/button_container.dart';
import 'package:exo_basiques/view/icon_text.dart';
import 'package:exo_basiques/view/little_title.dart';
import 'package:exo_basiques/view/main_title.dart';
import 'package:exo_basiques/view/profile_image.dart';
import 'package:flutter/material.dart';

Column header({required Size size}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "images/cover.jpg",
            height: 200,
            fit: BoxFit.fill,
          ),
          profilImage(imageName: "profile.jpg")
        ],
      ),
      const Center(child: MainTitleText(data: "David Grammatico")),
      const Text(
        "Un jour, les chats domineront le monde, mais pas aujourd'hui, c'est l'heure de la sieste",
        style: TextStyle(color: Colors.grey),
        textAlign: TextAlign.center,
      ),
      Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: buttonContainer(text: "Modifier le profil"),
              ),
              buttonContainer(icon: Icons.border_color)
            ],
          )),
      const Divider(
        thickness: 2,
      ),
      const LittleTitle(text: "A propos de moi"),
      iconText(icon: Icons.house, iconText: "Caumont-sur-Durance, France"),
      iconText(icon: Icons.work, iconText: "Développeur web / mobile"),
      iconText(icon: Icons.favorite, iconText: "Marié"),
      const Divider(
        thickness: 2,
      ),
    ],
  );
}
