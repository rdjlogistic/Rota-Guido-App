import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/alert_view.dart';
import 'package:rota_guido/widgets/button.dart';

class NewsInfo extends StatefulWidget {
  const NewsInfo({Key? key}) : super(key: key);

  @override
  _NewsInfoState createState() => _NewsInfoState();
}

class _NewsInfoState extends State<NewsInfo> {
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
                  Images.categoryLarge,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              /// Service Text
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 10,bottom: 10),
                child: Text("Pubblicata il 12 Febbraio 2021",
                    style: TextStyle(
                      color: ThemeColors.colorPrimaryOrange,
                      fontFamily: Fonts.robotoMedium,
                      fontSize: 18,
                    )),
              ),

              /// Service Description
              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10,bottom: 10),
                  child: Text(
                    "Nuovo manuale “Le stalle per la rimonta: dalla nascita al primo parto”",
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

              Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10,bottom: 10),
                  child: Text(
                    "Nella maggior parte degli allevamenti di vacche da latte, la migliore genetica si trova spesso in vitellaie ed è infatti risaputo come le performance delle vacche di domani sono il risultato dei primi mesi di vita dei vitelli di oggi. Stupisce pertanto vedere come spesso, purtroppo, ad un simile prezioso patrimonio non vengano prestate le dovute attenzioni e non siano previse in azienda le necessarie strutture e tecnologie di allevamento destinate a questi importanti e delicati settori.\n\nÈ infatti per questo motivo che da Novembre sarà pubblicato il nuovo MANUALE di ROTA GUIDO dedicato allo svezzamento della vitella e alle stalle per la rimonta con tutti gli impianti che possono usufruire dell’agevolazione 4.0.",
                    style: TextStyle(fontFamily: Fonts.robotoRegular, color: ThemeColors.blueTextColor, fontSize: 18),
                  )),



            ],
          ),
        )
      ]),
    );
  }
}
