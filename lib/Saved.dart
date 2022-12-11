import 'package:flutter/material.dart';
import 'NavBar.dart';

class Saved extends StatefulWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
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
            color: Colors.black87,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Text('Package Name', style:TextStyle(color: Colors.white70, fontSize: 18)),
                StickerImageWidget(),
                Buttons(),



                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Text('Package Name', style:TextStyle(color: Colors.white70, fontSize: 18)),
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