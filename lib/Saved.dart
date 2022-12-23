import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticker/BackendClasses/StickerPackages.dart';
import 'package:sticker/Controller.dart';
import 'NavBar.dart';
import 'package:http/http.dart' as http;

final controller = Get.put(Controller());

late Future<List<StickerPackages>> _stickerList;

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {

  String userId = controller.getUserId().toString();
  String demoUrl = "http://10.0.2.2:8080/stickerPackages/";
  Future<List<StickerPackages>> getPackages() async {

    String getStickersUrl=demoUrl+userId;

    final url = Uri.parse(getStickersUrl);
    final response = await http.get(url);

    List<StickerPackages> stickerList = [];

    if(response.statusCode==200){
      var stiList = jsonDecode(response.body);

      if(stiList is List){
        stickerList = stiList.map((e) => StickerPackages.fromJson(e)).toList();
      }else{
        return [];
      }

    }
    return stickerList;
  }

  @override
  void initState() {
    _stickerList = getPackages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Your Packages")),
          backgroundColor: Colors.deepPurpleAccent,

        ),
        backgroundColor: Colors.deepPurple,
        body: Container(
          margin:  EdgeInsets.fromLTRB(30, 30, 30, 30),

          child: Card(
            color: Colors.white,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                FutureBuilder(
                    future: _stickerList,
                    builder: (context, snapshot) {
                      if(snapshot.hasData){
                        for(int i=0;i<snapshot.data!.length.toInt(); i++){
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                              child: Row(
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 7),
                                    child: Container(
                                      width: 400,
                                      height: 400,
                                      decoration: BoxDecoration(
                                        color: Colors.white70,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(0,3),
                                        )
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 20),
                                              child: Text(snapshot.data!.elementAt(i).name.toString()),
                                            ),
                                            Container(
                                                alignment: Alignment.center,
                                                child: Image.network(snapshot.data!.elementAt(i).imageUrl.toString(),height: 350,width: 450,)
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              margin: EdgeInsets.symmetric(horizontal: 30),
                                              child: Icon(Icons.save), color: Colors.greenAccent,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                        return Text("Olduuu");
                      }

                      else{
                        return Text("Olmadııı");
                      }
                    }),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtomNavBar(),
      ),

    );
  }
}