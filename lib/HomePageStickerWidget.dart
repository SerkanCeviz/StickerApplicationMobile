import 'package:flutter/material.dart';

class HomePageStickerWidget extends StatelessWidget {
  const HomePageStickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
      child: Row(
        children: [
          //Single Sticker
          for(int i =0;i<10;i++)
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
                    child: Text("Username"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("images/logo.png"
                    , height: 300,width: 300,),
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
}
