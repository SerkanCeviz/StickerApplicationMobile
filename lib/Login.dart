import 'package:flutter/material.dart';
import 'Home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Sticker"),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Center(
            child: Container(
              margin:  EdgeInsets.fromLTRB(0, 40, 0, 40),
              child: Column(
                children: [
                  const SizedBox(
                    width: 400,
                    height: 200,
                    child: Image(image: AssetImage("images/logo.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: TextField(
                      controller: TextEditingController(),
                      onChanged : (v)=> TextEditingController().text = v,
                      decoration: const InputDecoration(
                        labelText: 'Nickname',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: TextField(
                      controller: TextEditingController(),
                      onChanged : (v)=> TextEditingController().text = v,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0,20),
                    width: 120,
                    height: 50,
                    color: Colors.black,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context)=> Home() ),
                        );
                      },
                      child: Text("Giriş Yap"),


                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 12, 0,12),
                    child: TextButton(onPressed: () {  },

                      child: Text("Üye Ol"),

                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}