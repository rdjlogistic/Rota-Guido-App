import 'dart:ui';

import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';

int _currentIndex = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageArray = ['${Images.tech1}', '${Images.tech2}', '${Images.tech3}'];
  List<String> imageArray1 = ['${Images.blog1}', '${Images.blog2}', '${Images.blog2}'];

  // int _currentIndex = 0;
  final List<Widget> _widgetList = [
    const Text('user'),
    const HomeWidget(),
    const Text('Page Two'),
    const Text('Page Three'),
    const Text('Page Four'),
    const Text('Page five'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* body: ListView(physics: new ClampingScrollPhysics(), children: [
      SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              Images.splashImage,
              scale: 10,
            ),
            const SizedBox(
              height: 20,
            ),

            ///IMAGE CAROUSEL
            Container(
              height: 215.0,
              width: Get.width,
              child: Carousel(
                images: [
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                ],
                boxFit: BoxFit.cover,
                borderRadius: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: const Duration(milliseconds: 300),
                overlayShadow: false,
                overlayShadowSize: 0.2,
                dotColor: Colors.white54,
                dotSize: 10,
                dotIncreaseSize: 1.1,
                dotBgColor: Colors.transparent,
                autoplayDuration: const Duration(seconds: 7),
              ),
            ),

            /// Divider
            Container(
              // margin: EdgeInsets.only(),
              alignment: Alignment.bottomCenter,
              child: const Divider(
                color: Color(0xFFEA5A0B),
                thickness: 10,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ///Technologies
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    Images.tech,
                    scale: 2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tecnologie Zootecnia",
                    style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.blueTextColor, fontSize: 22),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              // width: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageArray.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 100,
                  width: 170,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imageArray[index]),
                        Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(fontSize: 16, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoBold),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer",
                            style: TextStyle(fontSize: 14, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoLight),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ///Blog
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    Images.blog,
                    scale: 2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "BIOGAS",
                    style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.blueTextColor, fontSize: 22),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              // width: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageArray1.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 100,
                  width: 170,
                  child: Card(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imageArray1[index]),
                        Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(fontSize: 16, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoBold),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer",
                            style: TextStyle(fontSize: 14, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoLight),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ///Smart Farm
            GestureDetector(
              onTap: (){

              },
              child: Stack(
                children: [
                  Image.asset(
                    Images.smartFarm,
                    scale: 3,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 45, right: 40),
                    child: Text(
                      "Entra nell’area interattiva",
                      style: TextStyle(fontSize: 20, color: ThemeColors.redTextColor, fontFamily: Fonts.robotoMediumItalic),
                    ),
                  )
                ],
              ),
            ),

            ///Text
            Center(
                child: Text(
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut ",
              style: TextStyle(fontSize: 15, color: ThemeColors.blueTextColor),
              textAlign: TextAlign.center,
            )),


            ///image
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 200,
                  // width: Get.width/2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(Images.categoryImage,fit: BoxFit.contain,),
                  ),
                ),
                Container(height: 60,color: Colors.black26, margin: EdgeInsets.only(left: 20,right: 20,top: 120),),
                Container(height: 60, margin: EdgeInsets.only(left: 40,right: 20,top: 120),child: Text("Categorie",style: TextStyle(color: ThemeColors.whiteColor,fontSize: 22,fontFamily: Fonts.robotoBold),),),
                Container(height: 60, margin: EdgeInsets.only(left: 40,right: 20,top: 145),child: Text("Visualizza le categorie di prodotti",style: TextStyle(color: ThemeColors.whiteColor,fontSize: 18,fontFamily: Fonts.robotoRegular),),),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  height: 200,
                  // width: Get.width/2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(Images.newsImage,fit: BoxFit.contain,),
                  ),
                ),
                Container(height: 60,color: Colors.black26, margin: EdgeInsets.only(left: 20,right: 20,top: 120),),
                Container(height: 60, margin: EdgeInsets.only(left: 40,right: 20,top: 120),child: Text("News",style: TextStyle(color: ThemeColors.whiteColor,fontSize: 22,fontFamily: Fonts.robotoBold),),),
                Container(height: 60, margin: EdgeInsets.only(left: 40,right: 20,top: 145),child: Text("Le ultime news da Rota Guido",style: TextStyle(color: ThemeColors.whiteColor,fontSize: 18,fontFamily: Fonts.robotoRegular),),),
              ],
            ),


          ],
        ),
      )
    ]),*/
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        selectedLabelStyle: const TextStyle(color: Colors.black),
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items:[
          BottomNavigationBarItem(icon: Image.asset(Images.userBottom,scale: 3,), label: '',activeIcon: Image.asset(Images.usersActive,scale: 3)),
          BottomNavigationBarItem(icon: Image.asset(Images.homeBottom,scale: 3), label: '',activeIcon: Image.asset(Images.homeActive,scale: 3)),
          BottomNavigationBarItem(icon: Image.asset(Images.newsBottom,scale: 3), label: '',activeIcon: Image.asset(Images.newsActive,scale: 3)),
          BottomNavigationBarItem(icon: Image.asset(Images.profileBottom,scale:3), label: '',activeIcon: Image.asset(Images.userActive,scale: 3)),
          BottomNavigationBarItem(icon: Image.asset(Images.moreBottom,scale: 3), label: '',activeIcon: Image.asset(Images.moreActive,scale: 3)),
        ],
      ),
      body: Center(child: _widgetList[_currentIndex]),

    );
  }
  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<String> imageArray = ['${Images.tech1}', '${Images.tech2}', '${Images.tech3}'];
  List<String> imageArray1 = ['${Images.blog1}', '${Images.blog2}', '${Images.blog2}'];
  @override
  Widget build(BuildContext context) {
    return ListView(physics: new ClampingScrollPhysics(), children: [
      SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              Images.splashImage,
              scale: 10,
            ),
            const SizedBox(
              height: 20,
            ),

            ///IMAGE CAROUSEL
            Container(
              height: 215.0,
              width: Get.width,
              child: Carousel(
                images: [
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        Images.homeIndicator,
                      ),
                      Opacity(
                        opacity: 0.90,
                        child: Container(
                          // color: ThemeColors.colorPrimaryOrange,
                          color: Colors.black26,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "Strutture",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 15, top: 0),
                          child: Text(
                            "Centri zootecnici \n integrati",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 25, fontFamily: Fonts.robotoBold),
                          )),
                      Container(
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(bottom: 35, left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer \n adipiscing elit, sed diam nonummy",
                            style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                          )),
                    ],
                  ),
                ],
                boxFit: BoxFit.cover,
                borderRadius: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: const Duration(milliseconds: 300),
                overlayShadow: false,
                overlayShadowSize: 0.2,
                dotColor: Colors.white54,
                dotSize: 10,
                dotIncreaseSize: 1.1,
                dotBgColor: Colors.transparent,
                autoplayDuration: const Duration(seconds: 7),
              ),
            ),

            /// Divider
            Container(
              // margin: EdgeInsets.only(),
              alignment: Alignment.bottomCenter,
              child: const Divider(
                color: Color(0xFFEA5A0B),
                thickness: 10,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ///Technologies
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    Images.tech,
                    scale: 2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tecnologie Zootecnia",
                    style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.blueTextColor, fontSize: 22),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              // width: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageArray.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 100,
                  width: 170,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imageArray[index]),
                        Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(fontSize: 16, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoBold),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer",
                            style: TextStyle(fontSize: 14, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoLight),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ///Blog
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    Images.blog,
                    scale: 2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "BIOGAS",
                    style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.blueTextColor, fontSize: 22),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              // width: 100,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imageArray1.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  height: 100,
                  width: 170,
                  child: Card(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(imageArray1[index]),
                        Container(
                            margin: const EdgeInsets.only(left: 0),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(fontSize: 16, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoBold),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetuer",
                            style: TextStyle(fontSize: 14, color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoLight),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ///Smart Farm
            GestureDetector(
              onTap: () {
                // Get.to(MyHomePage());
              },
              child: Stack(
                children: [
                  Image.asset(
                    Images.smartFarm,
                    scale: 3,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 45, right: 40),
                    child: Text(
                      "Entra nell’area interattiva",
                      style: TextStyle(fontSize: 20, color: ThemeColors.redTextColor, fontFamily: Fonts.robotoMediumItalic),
                    ),
                  )
                ],
              ),
            ),

            ///Text
            Center(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut ",
                  style: TextStyle(fontSize: 15, color: ThemeColors.blueTextColor),
                  textAlign: TextAlign.center,
                )),

            ///image
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 200,
                  // width: Get.width/2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      Images.categoryImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.black26,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 120),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 40, right: 20, top: 120),
                  child: Text(
                    "Categorie",
                    style: TextStyle(color: ThemeColors.whiteColor, fontSize: 22, fontFamily: Fonts.robotoBold),
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 40, right: 20, top: 145),
                  child: Text(
                    "Visualizza le categorie di prodotti",
                    style: TextStyle(color: ThemeColors.whiteColor, fontSize: 18, fontFamily: Fonts.robotoRegular),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 200,
                  // width: Get.width/2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      Images.newsImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.black26,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 120),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 40, right: 20, top: 120),
                  child: Text(
                    "News",
                    style: TextStyle(color: ThemeColors.whiteColor, fontSize: 22, fontFamily: Fonts.robotoBold),
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 40, right: 20, top: 145),
                  child: Text(
                    "Le ultime news da Rota Guido",
                    style: TextStyle(color: ThemeColors.whiteColor, fontSize: 18, fontFamily: Fonts.robotoRegular),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ]);
  }
  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
