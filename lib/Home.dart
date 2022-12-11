import 'package:flutter/material.dart';
import 'NavBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Sticker")),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Colors.deepPurple,
        body: Container(
          margin:  EdgeInsets.fromLTRB(30, 30, 30, 30),

          child: Card(
            color: Colors.black87,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Text('username', style:TextStyle(color: Colors.white70, fontSize: 18)),
                StickerImageWidget(),
                Buttons(),



                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Text('username', style:TextStyle(color: Colors.white70, fontSize: 18)),
                StickerImageWidget(),
                Buttons(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtomNavBar(),
      ),

    );
  }
}