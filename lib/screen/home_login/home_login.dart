import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/image.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  _HomeLoginState createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(0),
        physics: const ClampingScrollPhysics(),
        children: [
          Stack(

            children: [
             /* Container(
                decoration: BoxDecoration( borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),color: ThemeColors.lightBlue),
                height: 450,
                // color: ThemeColors.lightBlue,
              ),*/
              Container(
                margin: const EdgeInsets.only(top: 60),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Images.splashImage,
                  scale: 10,

                ),
              ),
              Container(
                // margin: const EdgeInsets.only(top: 60),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Images.smart,
                  // scale: 10,

                ),
              ),
            /*  Container(
                margin: const EdgeInsets.only(top: 60),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Images.splashImage,
                  scale: 10,

                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 60),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Images.effect1,
                  // scale: 10,

                ),
              ),*/

            ],
          )
        ],
      ),
    );
  }
}
