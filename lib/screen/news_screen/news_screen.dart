import 'dart:async';
import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rota_guido/key.dart';
import 'package:rota_guido/routes/app_pages.dart';
import 'package:rota_guido/screen/category_screen/category_screen.dart';
import 'package:rota_guido/theme/colors.dart';
import 'package:rota_guido/theme/fonts.dart';
import 'package:rota_guido/theme/image.dart';
import 'package:rota_guido/widgets/progress.dart';


final storage = GetStorage();

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}


class _NewsScreenState extends State<NewsScreen> {

  List<NewsModel> NewsModelList = [];
  String? id;
  List items = [];
  bool isLoding = true;
  String language = "";

  @override
  void initState() {
    if (storage.read(appLocales).toString() == "en_EN") {
      language = "textEN";
    } else if (storage.read(appLocales).toString() == "it_IT") {
      language = "textIT";
    }

    print("language ==> $language");
    exampleListNewsAPICall().then((value) {
      setState(() {

      });
    });
    print("Method call ==>");
    super.initState();
  }

  Future<List<NewsModel>?> exampleListNewsAPICall() async {
    try {

      /* String graphQLDocument = '''query MyQuery {
  listNews {
    items {
      id
      title {
        textIT
        textEN
      }
      _abstract {
        textIT
        textEN
      }
    }
    nextToken
  }
}
''';*/
      String graphQLDocument = '''query NewsScreen {
listNews(filter: {isActive: {eq: true}}) {
items { id
title { textEN
} _abstract {
textEN }
pubblicationDate slider {
slides(filter: {index: {eq: 1}}) { items {
media { file {
bucket key region
} }
}}}}}}
''';

      var operation = Amplify.API.query(
          request: GraphQLRequest<String>(
            document: graphQLDocument,

          ));



      var response = await operation.response;
      var data = response.data;
      // print("Print Data => $data");

      var newsData = jsonDecode(data);

      for (int i = 0; i < (newsData["listNews"]["items"] as List).length; i++) {
        NewsModelList.add(NewsModel(" ${newsData["listNews"]["items"][i]["id"]}", "${newsData["listNews"]["items"][i]["title"]["${language}"]}", "${newsData["listNews"]["items"][i]["pubblicationDate"]}", "${newsData["listNews"]["items"][i]["_abstract"]["${language}"]}",));
      }
      print("Model List ==> ${NewsModelList[0].title}");
      return NewsModelList;

      // print('Query result: ' + data);
    } on ApiException catch (e) {
      print('Query failed: $e');
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 40, bottom: 5),
              alignment: Alignment.topCenter,
              child: Image.asset(
                Images.splashImage,
                scale: 12,
              )),
          Container(
            height: Get.size.height / 1.34,
            child: ListView.builder(
                itemCount: NewsModelList.length,
                // choices.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.NEWSINFO);
                      print(NewsModelList[index].id);
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight,
                                // colors: <Color>[Color(0xFFFFF6F0), Color(0xFFEA5A0B)],
                                colors: <Color>[
                                  Color(0xFFD8ECFF),
                                  Color(0xFF90B3D5)
                                ],
                              ),
                            ),
                            margin: EdgeInsets.only(left: 20, right: 20),
                            height: 350,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            margin: EdgeInsets.only(left: 20, right: 20),

                            child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0)),
                                child: Image.asset(
                                  "${Images.news2}",
                                  // fit: BoxFit.fitHeight,
                                )),
                            // height: 180,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            margin:
                            EdgeInsets.only(left: 30, right: 30, top: 200),

                            child: Text(
                              "${NewsModelList[index].title}",
                              style: TextStyle(
                                  color: ThemeColors.blueTextColor,
                                  fontFamily: Fonts.robotoBold,
                                  fontSize: 20),
                            ),

                            // height: 180,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            margin:
                            EdgeInsets.only(left: 30, right: 30, top: 250),

                             child: Text(
                              "${NewsModelList[index].title}",
                              style: TextStyle(
                                  color: ThemeColors.blueTextColor,
                                  fontFamily: Fonts.robotoMedium,
                                  fontSize: 16),
                            ),

                            // height: 180,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            margin:
                            EdgeInsets.only(left: 30, right: 30, top: 320),

                            child: Text(
                              "${NewsModelList[index].date.toString()}",
                              style: TextStyle(
                                  color: ThemeColors.whiteTextColor,
                                  fontFamily: Fonts.robotoMedium,
                                  fontSize: 16),
                            ),

                            // height: 180,
                          ),
                        ],
                      ),
                    ),


                  );
                }),

            /*  child: ListView.builder(
                itemCount: NewsModelList.length,
                itemBuilder: (BuildContext context,int index){
                  return ListTile(
                      leading: Icon(Icons.list),
                      trailing: Text("GFG", style: TextStyle(
                            color: Colors.green,fontSize: 15),),
                      title:Text("${NewsModelList[index].title}")
                  );
                }
            ),*/
          ),

        ],
      ),
    );
  }

}

class NewsModel {
  String id;
  String title;
  String date;
  String abstract;

  NewsModel(this.id, this.title, this.date, this.abstract);
}
