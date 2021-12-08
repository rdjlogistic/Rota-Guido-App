import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:rota_guido/screen/category_screen/category_screen.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 40),
              alignment: Alignment.topCenter,
              child: Image.asset(
                Images.splashImage,
                scale: 12,
              )),
          Container(
            // color: Colors.indigo,
            // height: 450,
            height: Get.size.height / 1.33,

            child: ListView.builder(
                itemCount: choices.length,
                // choices.length,
                itemBuilder: (context, index) {
                  // return Container(child: Text(choices[index].title.toString()),);
                  return Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Stack(
                      children: [

                        Container(
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight,
                            // colors: <Color>[Color(0xFFFFF6F0), Color(0xFFEA5A0B)],
                            colors: <Color>[Color(0xFFD8ECFF), Color(0xFF90B3D5)],
                          ),),
                          margin: EdgeInsets.only(left: 20, right: 20),
                          height: 350,
                        ),

                        Container(

                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),),
                          margin: EdgeInsets.only(left: 20, right: 20),

                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                              child: Image.asset(
                                choices[index].image,
                                // fit: BoxFit.fitHeight,
                              )),
                          // height: 180,
                        ),
                        Container(


                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),),
                          margin: EdgeInsets.only(left: 30, right: 30,top: 180),


                          child: Text(choices[index].title.toString(),style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoBold,fontSize: 20),),

                          // height: 180,
                        ),
                        Container(


                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),),
                          margin: EdgeInsets.only(left: 30, right: 30,top: 235),


                          child: Text(choices[index].dec.toString(),style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoMedium,fontSize: 16),),

                          // height: 180,
                        ),
                        Container(


                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),),
                          margin: EdgeInsets.only(left: 30, right: 30,top: 320),


                          child: Text("12 Febbraio 2021",style: TextStyle(color: ThemeColors.whiteTextColor,fontFamily: Fonts.robotoMedium,fontSize: 16),),

                          // height: 180,
                        ),




                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }


  List<Choices> choices = <Choices>[
    Choices(dec: "data is dec ",title: 'Nuovo manuale “Le stalle per la rimonta: dalla nascita al primo parto”', image: "${Images.categoryImage}"),
    Choices(dec: "data is dec ",title: 'Attrezzature per Animali da latte (Bovini e Bufale)', icon: Icons.contacts, image: "${Images.newsImage}"),
    Choices(dec: "data is dec ",title: 'Attrezzature per Animali da carne (Ingrasso e Vacca Vitello)', icon: Icons.map, image: "${Images.newsImage}"),
    Choices(dec: "data is dec ",title: 'Ovini Caprini', icon: Icons.phone, image: "${Images.newsImage}"),
    Choices(dec: "data is dec ",title: 'Suini', icon: Icons.camera_alt, image: "${Images.newsImage}"),
    Choices(dec: "data is dec ",title: 'Avicoli', icon: Icons.settings, image: "${Images.newsImage}"),
    Choices(dec: "data is dec ",title: 'Gestione liquami', icon: Icons.photo_album, image: "${Images.newsImage}"),
    Choices(dec: "data is dec ",title: 'Impianti Biogas e Biometano', icon: Icons.wifi, image: "${Images.newsImage}"),
  ];

}

class Choices {
  Choices({this.title, this.icon, this.image,this.dec});

  final String? title;
  final String? dec;
  final IconData? icon;

  final dynamic? image;
}

