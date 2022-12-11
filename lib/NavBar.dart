import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sticker/Friend.dart';
import 'package:sticker/Home.dart';
import 'package:sticker/Saved.dart';

class ButtomNavBar extends StatefulWidget {

  const ButtomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _currentTab=0;
  Widget name = Home();
  @override
  Widget build(BuildContext context) {

    return AnimatedBottomNavigationBar(
      icons: [Icons.home, Icons.search, Icons.bookmark],
      activeIndex: _currentTab,
      activeColor: Colors.lightBlueAccent,
      gapLocation: GapLocation.none,
      inactiveColor: Colors.blue[900],
      backgroundColor: Colors.black,
      onTap: (int) {
        setState((){
          _currentTab=int;
        });
        name=getName(int);
        Navigator.push(context, MaterialPageRoute(builder: (Context)=>name));
      },
    );
  }
}
Widget getName(int number){
  switch(number){
    case 0: return Home();
    case 1: return Friend();
    case 2: return Saved();
  }
  return Home();
}
class StickerImageWidget extends StatelessWidget {
  const StickerImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: Image(image: AssetImage("images/logo.png"),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10,10),
              child: Icon(Icons.favorite,color: Colors.red)
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10,10),
            child:Icon(Icons.save, color: Colors.blue,),

          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10,10),
              child:Icon(Icons.edit,color: Colors.green,)
          ),
        ],
      ),
    );
  }
}