import 'dart:ui';

import 'package:clippy_flutter/diagonal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/button.dart';

class RemoteOption extends StatefulWidget {
  const RemoteOption({Key? key}) : super(key: key);

  @override
  _RemoteOptionState createState() => _RemoteOptionState();
}

class _RemoteOptionState extends State<RemoteOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*body: ListView(
        // padding: const EdgeInsets.all(0),
        // physics: const ClampingScrollPhysics(),
        children: [
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 20),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.icon40,scale: 2.5,),
                SizedBox(width: 35),
                Image.asset(Images.splashImage,scale: 10,),


              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Centro di controllo",style: TextStyle(fontSize: 32,fontFamily: Fonts.robotoBold,color: ThemeColors.codeBlue),),
          ),




        ],
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(top: 15,bottom: 20),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Images.icon40,scale: 2.5,),
                  SizedBox(width: 35),
                  Image.asset(Images.splashImage,scale: 10,),

                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Centro di controllo",style: TextStyle(fontSize: 32,fontFamily: Fonts.robotoBold,color: ThemeColors.codeBlue),),
            ),
            SizedBox(height: 30,),

            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 2 / 3,
              //crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
                children: List.generate(choices.length, (index) {
                  return GestureDetector(
                    onTap: (){
                      print("Index == >$index");
                      // Get.toNamed(Routes.CATEGORY_Info);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(choices[index].image),
                        SizedBox(height: 15,),
                        Text(choices[index].title.toString(),style: TextStyle(fontSize: 14,color: ThemeColors.codeBlue,fontFamily: Fonts.robotoRegular,),textAlign: TextAlign.center,)
                      ],
                    ),
                  );

                })
            ),
            SizedBox(height: 20,),




          ],
        ),
            Container(
              height: 45,
              width: 210,
              decoration: const BoxDecoration(borderRadius:BorderRadius.all( Radius.circular(60)),   color:Color(0xFF2A4A7B)),
              child: MaterialButton(
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("REMOTE DESKTOP",style: TextStyle(color: ThemeColors.whiteColor,fontFamily: Fonts.robotoBold,fontSize: 14),),
                    SizedBox(width: 10,),
                    Image.asset(Images.nextArrow,scale: 2,),
                  ],
                ),
                onPressed: (){},
                // color:ThemeColors.codeBlue,
                textColor: Colors.white,
                // padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                splashColor: Colors.grey,
              ),
            ),
            const SizedBox(height: 30,)

      ])
    ),

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