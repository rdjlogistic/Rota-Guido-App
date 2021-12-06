import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/button.dart';

class BlogInfo extends StatefulWidget {
  const BlogInfo({Key? key}) : super(key: key);

  @override
  _BlogInfoState createState() => _BlogInfoState();
}

class _BlogInfoState extends State<BlogInfo> {

  List<String> imageArray1 = ['${Images.related}', '${Images.related1}', '${Images.related2}','${Images.related3}','${Images.related4}'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(physics: const ClampingScrollPhysics(), children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Container(

                    child: Image.asset(
                      Images.back,
                      scale: 3,
                    ),
                    margin: EdgeInsets.only(top: 35,left: 25),
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

              ],),

              const SizedBox(
                height: 30,
              ),

              ///IMAGE
              Container(
                width: Get.width,
                child: Image.asset(
                  Images.blogInfoImage,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              /// Service Text
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 10,bottom: 10),
                child: Text("Service",
                    style: TextStyle(
                      color: ThemeColors.colorPrimaryOrange,
                      fontFamily: Fonts.robotoBold,
                      fontSize: 38,
                    )),
              ),

              /// Service Description
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10,bottom: 10),
                  child: Text(
                    "Biogas e Biometano, Assistenza Tecnica",
                    style: TextStyle(fontFamily: Fonts.robotoBold, color: ThemeColors.blueTextColor, fontSize: 20),
                  )),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10,bottom: 10),
                  child: Text(
                    "Qualunque sia la tecnologia del Vostro impianto Biogas o Biometano, possiamo offrirVi la migliore assistenza tecnica per la gestione, la manutenzione ed il rendimento anche in remoto. Service Elettrico, service meccanico, service C Cogeneratore, service biologico, pulizia svuotamento digestori.",
                    style: TextStyle(fontFamily: Fonts.robotoRegular, color: ThemeColors.blueTextColor, fontSize: 18),
                  )),

              const SizedBox(height: 20,),

              /// Info Button
              Container(
                margin: const EdgeInsets.only(left: 15),
                // height: MediaQuery.of(context).size.height / 3.5,
                alignment: Alignment.topLeft,
                child: CustomButton(
                  height: 50,
                  label: "Richiedi Info",
                  fontSize: 24,
                  labelColor: ThemeColors.textField,
                  width: MediaQuery.of(context).size.width / 1.6,
                  isIcon: false,
                  onPressed: () {},

                ),
              ),

              const SizedBox(height: 25),

              ///Blog
              Container(
                margin: const EdgeInsets.only(left: 15, bottom: 10),
                child: Row(
                  children: [

                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Prodotti correlati",
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

              const SizedBox(height: 20),


            ],
          ),
        )
      ]),
    );
  }
}
