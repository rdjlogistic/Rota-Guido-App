import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
       // physics: NeverScrollableScrollPhysics(),
       children: [
         SingleChildScrollView(
           child: Stack(
             children: [


               Image.asset(
                 Images.profile,
                 // scale: 10,
               ),
               Container(
                 margin: EdgeInsets.only(top: 25),
                 alignment: Alignment.topCenter,
                 child: Image.asset(
                   Images.splashImage,
                   scale: 10,
                 ),

               ),
               Stack(
                 children: [
                   Container(  decoration: const BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Colors.white),margin:EdgeInsets.only(top: 350),height: 400,),
                   Container(
                     margin: EdgeInsets.only(top: 380,left: 15),
                     child: Column(
                       children: [
                         Row(
                           children: [
                             Container(
                               // margin: EdgeInsets.only(top: 380,left: 25),
                               height: 80,
                               width: 80,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(20.0),
                                 child:Image.asset(Images.user)
                               ),
                             ),
                             SizedBox(width: 20,),
                             Container(
                               margin: EdgeInsets.only(top: 10),
                               child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                           Text("Alexio Morales",style: TextStyle(color: ThemeColors.blueTextColor,fontSize: 24,fontFamily: Fonts.robotoBold),),
                           Text("alex.morales@gmail.com",style: TextStyle(color: ThemeColors.blueTextColor,fontSize: 15,fontFamily: Fonts.robotoBold),)
                                 ],
                               ),
                             )
                           ],
                         ),

                         Container(
                           margin: EdgeInsets.only(right: 15,top: 30),
                             decoration: const BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),),),
                             height: 260,
                             width: Get.size.width,
                             child: Card(shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15.0),
                             ),color: ThemeColors.whiteColor,elevation: 5,child:
                             Stack(
                               children: [
                                 Container(
                                   alignment: Alignment.topLeft,
                                   margin: EdgeInsets.only(left: 40,top: 30),
                                   child: Column(
                                     children: [
                                       Image.asset(Images.profileIcon1,scale: 2,),
                                       SizedBox(height: 15,),
                                       Text("Categoria",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),)
                                     ],
                                   ),
                                 ),
                                 Container(
                                   alignment: Alignment.topCenter,
                                   margin: EdgeInsets.only(top: 30),
                                   child: Column(
                                     children: [
                                       Image.asset(Images.profileIcon2,scale: 2,),
                                       SizedBox(height: 15,),
                                       Text("Azienda",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),)
                                     ],
                                   ),
                                 ),
                                 Container(
                                   alignment: Alignment.topRight,
                                   margin: EdgeInsets.only(right: 40,top: 30),
                                   child: Column(
                                     children: [
                                       Image.asset(Images.profileIcon3,scale: 2,),
                                       SizedBox(height: 15,),
                                       Text("Location",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),)
                                     ],
                                   ),
                                 ),

                                 Container(alignment:Alignment.center,child: Divider(height: 1,color: ThemeColors.divider,),margin: EdgeInsets.only(left: 20,right: 20),),

                                 Container(
                                   alignment: Alignment.topLeft,
                                   margin: EdgeInsets.only(left: 40,top: 150),
                                   child: Column(
                                     children: [
                                       Image.asset(Images.profileIcon4,scale: 2,),
                                       SizedBox(height: 15,),
                                       Text("Settings",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),)
                                     ],
                                   ),
                                 ),
                                 Container(
                                   alignment: Alignment.topCenter,
                                   margin: EdgeInsets.only(top: 150),
                                   child: Column(
                                     children: [
                                       Image.asset(Images.profileIcon5,scale: 2,),
                                       SizedBox(height: 15,),
                                       Text("Comunicazioni",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),)
                                     ],
                                   ),
                                 ),
                               ],
                             ),),),



                       ],
                     ),
                   ),
                 ],
               ),


             ],
           ),

         ),
         SizedBox(height: 20,),
         Container(
           margin: EdgeInsets.only(left: 20,right: 20),
             child: Text("Alexio Morales Nella maggior parte degli allevamenti di vacche da latte, la migliore genetica si trova spesso in vitellaie ed è infatti risaputo come le performance delle vacche di domani sono il risultato dei primi mesi di vita dei vitelli di oggi. \n\n Stupisce pertanto vedere come spesso, purtroppo, ad un simile prezioso patrimonio non vengano prestate le dovute attenzioni e non siano previse in azienda le necessarie strutture e tecnologie di allevamento destinate a questi importanti e delicati settori.",style: TextStyle(fontSize: 16,fontFamily: Fonts.robotoRegular,color: ThemeColors.blueTextColor),)),
         SizedBox(height: 20,),

         Container(
           margin: EdgeInsets.only(left: 20,top: 20),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Image.asset(
                     Images.profileIcon1,
                     scale: 2,
                   ),
                  const SizedBox(width: 20,),
                   Text("Categoria",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),),


                 ],
               ),
              const SizedBox(height: 20,),
               Container(
                 margin: EdgeInsets.only(right: 20),
                   child: Text("Alexio Morales Nella maggior parte degli allevamenti di vacche da latte, la migliore genetica si trova spesso in vitellaie ed è infatti ",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 16),)),
               const SizedBox(height: 20,),

               Row(
                 children: [
                   Image.asset(
                     Images.profileIcon2,
                     scale: 2,
                   ),
                   const SizedBox(width: 20,),
                   Text("Azienda",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),),


                 ],
               ),
               const SizedBox(height: 20,),
               Container(
                   margin: EdgeInsets.only(right: 20),
                   child: Text("Alexio Morales Nella maggior parte degli allevamenti di vacche da latte, la migliore genetica si trova spesso in vitellaie ed è infatti ",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 16),)),
               const SizedBox(height: 20,),

               Row(
                 children: [
                   Image.asset(
                     Images.profileIcon3,
                     scale: 2,
                   ),
                   const SizedBox(width: 20,),
                   Text("Location",style: TextStyle(color: ThemeColors.blueTextColor,fontFamily: Fonts.robotoRegular,fontSize: 14),),


                 ],
               ),
               const SizedBox(height: 20,),
               Container(
                 margin: EdgeInsets.only(right: 20),
                 child: Image.asset(
                   Images.map,
                   scale: 2,
                 ),
               ),
               const SizedBox(height: 20,),
             ],
           ),
         )

       ],
     ),
    );
  }
}
