import 'dart:ui';

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                // colors: <Color>[Color(0xFFFFF6F0), Color(0xFFEA5A0B)],
                colors: <Color>[Color(0xFFFFF6F0), Color(0xFFEA7B3F)],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
              margin: EdgeInsets.only(top: 40),
              alignment: Alignment.topCenter,
              child: Image.asset(
                Images.splashImage,
                scale: 12,
              )),
          Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 120),
              child: Text(
                "Categorie",
                style: TextStyle(fontSize: 26, fontFamily: Fonts.robotoBold, color: ThemeColors.colorPrimaryOrange),
              )),
          Container(margin: const EdgeInsets.only(top: 150, left: 10, right: 10), child: MyApps()),
        ],
      ),
    );
  }
}

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
        //crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(choices.length, (index) {
          return Center(child: SelectCard(choice: choices[index]));
        }));
  }
}

class Choice {
  Choice({this.title, this.icon, this.image});

  final String? title;
  final IconData? icon;
  final dynamic? image;
}

List<Choice> choices = <Choice>[
  Choice(title: 'Strutture', image: "${Images.newsImage}"),
  Choice(title: 'Attrezzature per Animali da latte (Bovini e Bufale)', icon: Icons.contacts, image: "${Images.newsImage}"),
  Choice(title: 'Attrezzature per Animali da carne (Ingrasso e Vacca Vitello)', icon: Icons.map, image: "${Images.newsImage}"),
  Choice(title: 'Ovini Caprini', icon: Icons.phone, image: "${Images.newsImage}"),
  Choice(title: 'Suini', icon: Icons.camera_alt, image: "${Images.newsImage}"),
  Choice(title: 'Avicoli', icon: Icons.settings, image: "${Images.newsImage}"),
  Choice(title: 'Gestione liquami', icon: Icons.photo_album, image: "${Images.newsImage}"),
  Choice(title: 'Impianti Biogas e Biometano', icon: Icons.wifi, image: "${Images.newsImage}"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, this.choice}) : super(key: key);
  final Choice? choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.CATEGORY_Info);
      },
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), color: ThemeColors.colorPrimaryOrange),
          // color: Colors.green,
          height: 500,
          child: Stack(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Expanded(child: Icon(choice!.icon, size:50.0, )),
                Container(
                    decoration: const BoxDecoration(
                        // borderRadius:const BorderRadius.all(Radius.circular(10)),
                        // color: ThemeColors.colorPrimaryOrange

                        ),
                    height: 110,
                    margin: const EdgeInsets.only(top: 75),
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                        child: Image.asset(
                          choice!.image,
                          fit: BoxFit.cover,
                        ))),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // color: ThemeColors.textColor
                  ),
                  height: 80,
                  width: 120,
                  child: Diagonal(
                    clipHeight: 25,
                    axis: Axis.horizontal,
                    position: DiagonalPosition.BOTTOM_LEFT,
                    child: GestureDetector(
                      // onTap: () => Navigator.pushNamed(context, '/diagonal_demo'),
                      child: Container(
                        color: ThemeColors.colorPrimaryOrange,
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 5, top: 10),
                    child: Text(
                      choice!.title.toString(),
                      style: TextStyle(color: ThemeColors.whiteTextColor, fontFamily: Fonts.robotoMedium, fontSize: 14),
                      maxLines: 4,
                    )),
              ]),
        ),
      ),
    );
  }
}
