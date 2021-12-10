import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';

class RemoteInfo extends StatefulWidget {
  const RemoteInfo({Key? key}) : super(key: key);

  @override
  _RemoteInfoState createState() => _RemoteInfoState();
}

class _RemoteInfoState extends State<RemoteInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 20),
              child: Stack(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: Image.asset(
                          Images.back,
                          scale: 2.8,
                        ),
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20, top: 40),
                      )),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.icon40,
                        scale: 2.5,
                      ),
                      SizedBox(width: 35),
                      Image.asset(
                        Images.splashImage,
                        scale: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 5),
              child: Row(
                children: [
                  Image.asset(Images.code1),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: Get.size.width / 1.6,
                    // alignment: Alignment.center,
                    child: Text("Sistema di controllo illuminazione impianto Lorem", maxLines: 3, style: TextStyle(fontSize: 26, fontFamily: Fonts.robotoBold, color: ThemeColors.colorPrimaryOrange)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim facilisi.",
                  style: TextStyle(color: ThemeColors.blueTextColor, fontFamily: Fonts.robotoRegular, fontSize: 18),
                )),
            const SizedBox(
              height: 30,
            ),
            ExpandableView(),
            ExpandableView1()

          ],
        ),
        const SizedBox(
          height: 30,
        )
      ])),
    );
  }
}

class Choice {
  Choice({this.title, this.icon, this.image});

  final String? title;
  final IconData? icon;
  final dynamic? image;
}

List<Choice> choices = <Choice>[
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code1}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code2}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code3}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code4}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code5}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code6}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code7}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code8}"),
  Choice(title: 'Lorem ipsum dolor sit amet', image: "${Images.code9}"),
];

class ExpandableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(
            // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(
              // <-- Expands when tapped on the cover photo
              child: Container(
                  height: 90,
                  width: Get.size.width / 1.1,
                  child: Card(
                    shape: RoundedRectangleBorder(side: BorderSide(color: ThemeColors.blueBoarder, width: 2.0), borderRadius: BorderRadius.circular(13.0)),
                    child: Stack(
                      children: [
                        Container(
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: ThemeColors.blueGrid,
                            size: 70.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          alignment: Alignment.centerRight,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 25, top: 15),
                            child: Text(
                              "Andamento luci",
                              style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 22),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 25, top: 45),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 16),
                            )),
                      ],
                    ),
                  )),
            ),
            expanded: Column(children: [
              ExpandableButton(
                // <-- Collapses when tapped on
                child: Container(
                    height: 380,
                    width: Get.size.width / 1.1,
                    child: Card(
                      shape: RoundedRectangleBorder(side: BorderSide(color: ThemeColors.blueBoarder, width: 2.0), borderRadius: BorderRadius.circular(20.0)),
                      child: Stack(
                        children: [
                          Container(
                            child: Icon(
                              Icons.arrow_drop_up,
                              color: ThemeColors.blueGrid,
                              size: 60.0,
                              semanticLabel: 'Text to announce in accessibility modes',
                            ),
                            alignment: Alignment.topRight,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                "Andamento luci",
                                style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 22),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 25, top: 45),
                              child: Text(
                                "Lorem Ipsum",
                                style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 16),
                              )),
                          Container(margin: EdgeInsets.only(top: 100), child: Image.asset(Images.chart)),
                        ],
                      ),
                    )),
              ),
            ]),
          ),



        ],
      ),
    );
  }
}
class ExpandableView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(
            // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(
              // <-- Expands when tapped on the cover photo
              child: Container(
                  height: 90,
                  width: Get.size.width / 1.1,
                  child: Card(
                    shape: RoundedRectangleBorder(side: BorderSide(color: ThemeColors.blueBoarder, width: 2.0), borderRadius: BorderRadius.circular(13.0)),
                    child: Stack(
                      children: [
                        Container(
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: ThemeColors.blueGrid,
                            size: 70.0,
                            semanticLabel: 'Text to announce in accessibility modes',
                          ),
                          alignment: Alignment.centerRight,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 25, top: 15),
                            child: Text(
                              "Consumo energia",
                              style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 22),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 25, top: 45),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 16),
                            )),
                      ],
                    ),
                  )),
            ),
            expanded: Column(children: [
              ExpandableButton(
                // <-- Collapses when tapped on
                child: Container(
                    height: 380,
                    width: Get.size.width / 1.1,
                    child: Card(
                      shape: RoundedRectangleBorder(side: BorderSide(color: ThemeColors.blueBoarder, width: 2.0), borderRadius: BorderRadius.circular(20.0)),
                      child: Stack(
                        children: [
                          Container(
                            child: Icon(
                              Icons.arrow_drop_up,
                              color: ThemeColors.blueGrid,
                              size: 60.0,
                              semanticLabel: 'Text to announce in accessibility modes',
                            ),
                            alignment: Alignment.topRight,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                "Andamento luci",
                                style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 22),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 25, top: 45),
                              child: Text(
                                "Lorem Ipsum",
                                style: TextStyle(color: ThemeColors.colorPrimaryOrange, fontFamily: Fonts.robotoBold, fontSize: 16),
                              )),
                          Container(margin: EdgeInsets.only(top: 70,left: 40), child: Image.asset(Images.chart1,)),
                        ],
                      ),
                    )),
              ),
            ]),
          ),


        ],
      ),
    );
  }
}
