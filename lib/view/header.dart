import 'package:exo_basiques/view/profile_image.dart';
import 'package:flutter/material.dart';

Column header({required Size size}) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "images/cover.jpg",
            height: 200,
            fit: BoxFit.fill,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 140),
              child: profilImage(imageName: "images/profile.jpg"))
        ],
      ),
      const Text(
        "David Grammatico",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Text(
        "Un jour, les chats domineront le monde, mais pas aujourd'hui, c'est l'heure de la sieste",
        style: TextStyle(color: Colors.black.withOpacity(0.5)),
        textAlign: TextAlign.center,
      ),
      Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 40,
                width: size.width * 0.8,
                child: Text(
                  "Modifier le profil",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 40,
                  width: size.width * 0.1,
                  child: Icon(
                    Icons.redo_sharp,
                    color: Colors.white,
                  )),
            ],
          ))
    ],
  );
}
