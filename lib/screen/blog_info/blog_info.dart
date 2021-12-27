
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/alert_view.dart';
import 'package:rota_guido/widgets/button.dart';
import 'package:video_player/video_player.dart';


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

              Container(width: Get.size.width,height:250,child: ChewieDemo(),),

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
                  onPressed: () {
                    showDialog(
                      barrierColor: Colors.black26,
                      context: context,
                      builder: (context) {
                        return const CustomAlertDialog(
                        );
                      },
                    );
                  },

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



class ChewieDemo extends StatefulWidget {
  ChewieDemo({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform? _platform;
  VideoPlayerController? _videoPlayerController1;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    // _videoPlayerController1 = VideoPlayerController.network(
    //     'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4');
    _videoPlayerController1 = VideoPlayerController.network(
        // 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4');
        'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4');
    // _videoPlayerController2 = VideoPlayerController.network(
    //     'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1!,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: false,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );

    _videoPlayerController1!.addListener(() {
      if (_videoPlayerController1!.value.position ==
          _videoPlayerController1!.value.duration) {
        print('video Ended');
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController1!.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      //MaterialApp(
      // title: widget.title,
      // theme: ThemeData.light().copyWith(
      //   platform: _platform ?? Theme.of(context).platform,
      // ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(widget.title),
      //   ),
      //   body:
    Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Chewie(
                  controller: _chewieController!,
                ),
              ),
            ),
         /*   FlatButton(
              onPressed: () {
                _chewieController!.enterFullScreen();
              },
              child: Text('Fullscreen'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _chewieController!.dispose();
                        _videoPlayerController2!.pause();
                        _videoPlayerController2!.seekTo(Duration(seconds: 0));
                        _chewieController = ChewieController(
                          videoPlayerController: _videoPlayerController1!,
                          aspectRatio: 3 / 2,
                          autoPlay: true,
                          looping: true,
                        );
                      });
                    },
                    child: Padding(
                      child: Text("Video 1"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _chewieController!.dispose();
                        _videoPlayerController1!.pause();
                        _videoPlayerController1!.seekTo(Duration(seconds: 0));
                        _chewieController = ChewieController(
                          videoPlayerController: _videoPlayerController2!,
                          aspectRatio: 3 / 2,
                          autoPlay: true,
                          looping: true,
                        );
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text("Error Video"),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _platform = TargetPlatform.android;
                      });
                    },
                    child: Padding(
                      child: Text("Android controls"),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _platform = TargetPlatform.iOS;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text("iOS controls"),
                    ),
                  ),
                )
              ],
            )*/
          ],
        );
      // ),
    // );
  }
}