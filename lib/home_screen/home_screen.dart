import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

         SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(Images.splashImage,scale: 10,),
              const SizedBox(height: 20,),

              Container(child:  SizedBox(
                height: 200.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => const Card(
                    child:  Center(child: Text('Dummy Card Text')),
                  ),

          ),
        )),
        ],
      ),
    )]));
  }
}
