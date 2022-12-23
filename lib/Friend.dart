import 'package:flutter/material.dart';
import 'NavBar.dart';

class Friend extends StatefulWidget {
  const Friend({Key? key}) : super(key: key);

  @override
  State<Friend> createState() => _FriendState();
}

class _FriendState extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Find Friend"),
          backgroundColor: Colors.deepPurple,
        ),
        backgroundColor: Colors.indigoAccent,
        body: Container(
          color: Colors.black12,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: TextEditingController(),
                  onChanged : (v)=> TextEditingController().text = v,
                  decoration: const InputDecoration(
                    iconColor: Colors.black87,
                    icon: Icon(Icons.search),
                    labelText: 'Nickname',
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  margin: EdgeInsets.all(20),
                  child: ListTile(
                    leading: Icon(Icons.assignment_turned_in_outlined),
                    title: Text("icarus"),
                    onTap: () => Icon(Icons.assignment_turned_in_outlined),
                  )

              )
            ],
          ),


        ),
        bottomNavigationBar: ButtomNavBar(),
      ),
    );
  }
}