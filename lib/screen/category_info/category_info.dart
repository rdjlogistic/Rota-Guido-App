import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/alert_view.dart';
import 'package:rota_guido/widgets/button.dart';

class CategoryInfo extends StatefulWidget {
  const CategoryInfo({Key? key}) : super(key: key);

  @override
  _CategoryInfoState createState() => _CategoryInfoState();
}

class _CategoryInfoState extends State<CategoryInfo> {
  List<String> imageArray1 = ['${Images.hotel}', '${Images.c1}', '${Images.tech3}',];
  List<String> imageArray2 = ['${Images.c7}', '${Images.c8}', '${Images.c9}',];
  List<String> imageArray3 = ['${Images.c13}', '${Images.c14}', '${Images.c15}',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            // colors: <Color>[Color(0xFFFFF6F0), Color(0xFFEA5A0B)],
            colors: <Color>[Color(0xFFFFF6F0), Color(0xFFEA7B3F)],
          ),
        ),
        child: ListView(physics: const ClampingScrollPhysics(), children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: Image.asset(
                          Images.back,
                          scale: 3,
                        ),
                        margin: EdgeInsets.only(top: 35, left: 25),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      alignment: Alignment.center,
                      child: Image.asset(
                        Images.splashImage,
                        scale: 12,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        Images.newsImage,
                        scale: 4.7,
                      ),
                    ),
                    Row(
                      children: [
                        Diagonal(
                          clipHeight: 50.0,
                          axis: Axis.vertical,
                          position: DiagonalPosition.TOP_RIGHT,
                          child: Container(
                            // margin: EdgeInsets.only(right: 30),
                            // alignment: ,
                            color: ThemeColors.colorPrimaryOrange,
                            width: Get.size.width / 1.4,
                            height: 100.0,
                          ),
                        ),
                        // SizedBox(width:100)
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 15, left: 15),
                        child: Text(
                          "Strutture",
                          style: TextStyle(color: ThemeColors.whiteTextColor, fontSize: 16, fontFamily: Fonts.robotoMedium),
                        ))
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),

                /// Strutture
                Container(
                  color: ThemeColors.blueGrid,
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 10,top: 15),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Strutture Zootecniche",
                            style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.whiteTextColor, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 250,
                      // width: 100,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: imageArray1.length,
                        itemBuilder: (BuildContext context, int index) => GestureDetector(
                          onTap: () {
                            // Get.toNamed(Routes.BLOG_INFo);
                          },
                          child: Container(
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
                    ),
                  ],),
                ),
                const SizedBox(height: 20),


                Container(
                  color: ThemeColors.blueGrid,
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 10,top: 15),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Agro Industriali",
                            style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.whiteTextColor, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 250,
                      // width: 100,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: imageArray2.length,
                        itemBuilder: (BuildContext context, int index) => GestureDetector(
                          onTap: () {
                            // Get.toNamed(Routes.BLOG_INFo);
                          },
                          child: Container(
                            height: 100,
                            width: 170,
                            child: Card(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(imageArray2[index]),
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
                    ),
                  ],),
                ),
                const SizedBox(height: 20),



                Container(
                  color: ThemeColors.blueGrid,
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 10,top: 15),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Serramenti / Timpani",
                            style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.whiteTextColor, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 250,
                      // width: 100,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: imageArray3.length,
                        itemBuilder: (BuildContext context, int index) => GestureDetector(
                          onTap: () {
                            // Get.toNamed(Routes.BLOG_INFo);
                          },
                          child: Container(
                            height: 100,
                            width: 170,
                            child: Card(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(imageArray3[index]),
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
                    ),
                  ],),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
