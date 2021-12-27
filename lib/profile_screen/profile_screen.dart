import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/src/provider.dart';
import 'package:get/get.dart';
import 'package:rota_guido/aws_auth.dart';
import 'package:rota_guido/providers.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/button.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          // extendBody: true,
          body: ListView(
            padding: EdgeInsets.zero,
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
                      margin: EdgeInsets.only(top: 35),
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        Images.splashImage,
                        scale: 10,
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.white),
                          margin: EdgeInsets.only(top: 330),
                          height: 400,
                        ),
                        Container(
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.black12),
                          margin: EdgeInsets.only(top: 330),
                          height: 180,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 350, left: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Alexio Morales",
                                          style: TextStyle(color: ThemeColors.codeBlue, fontSize: 30, fontFamily: Fonts.robotoBold),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "alex.morales@gmail.com",
                                          style: TextStyle(color: ThemeColors.codeBlue, fontSize: 20, fontFamily: Fonts.robotoRegular),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: Checkbox(
                                                value: isChecked,
                                                side: BorderSide(color: ThemeColors.textColor, width: 2),
                                                // activeColor: ThemeColors.textColor,
                                                activeColor: ThemeColors.textColor,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                    print(value);
                                                  });
                                                },
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Newsletter", style: TextStyle(color: ThemeColors.codeBlue, fontSize: 16, fontFamily: Fonts.robotoRegular)),
                                                  Text("Desidero ricevere la vostra newsletter", style: TextStyle(color: ThemeColors.codeBlue, fontSize: 14, fontFamily: Fonts.robotoRegular)),

                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),

                              /*  Container(
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
*/
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 530),
                          // margin: const EdgeInsets.only(top: 100),
                          // height: MediaQuery.of(context).size.height / 3.5,
                          alignment: Alignment.center,
                          child: CustomButton(
                            height: 50,
                            label: "Logout",
                            labelColor: ThemeColors.textField,
                            width: MediaQuery.of(context).size.width / 1.5,
                            isIcon: true,
                            onPressed: () async {
                              final authAWSRepo = context.read(authAWSRepositoryProvider);
                              await authAWSRepo.logOut();
                              context.refresh(authUserProvider);
                              Get.offAllNamed(Routes.SIGN_IN);
                            },
                            icon: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Logout", style: TextStyle(color: ThemeColors.textField, fontFamily: Fonts.robotoMedium, fontSize: 18)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              /* SizedBox(height: 20,),
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
         )*/
            ],
          ),
        ));
  }
}
