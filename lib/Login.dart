
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';
import 'package:sticker/BackendClasses/Users.dart';
import 'package:sticker/Controller.dart';
import 'Home.dart';
import 'package:http/http.dart' as http;
import 'package:animated_snack_bar/animated_snack_bar.dart';

final LocalStorage storage = LocalStorage('key');


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  String demoUrl = "http://10.0.2.2:8080/users/findByNickname/";
  bool isOk = false;
  final controller = Get.put(Controller());


  Future findUser() async {
    final url = Uri.parse(demoUrl);
    print("SAAAAA");
    final response = await http.get(url);

    if(response.statusCode==200){

      var result = userFromJson(response.body);
      print(result.name);
      isOk=true;

      storage.setItem('id', result.id);
      controller.setUserId(result.id);

    }

  }

  @override
  Widget build(BuildContext context) {

    TextEditingController _nickname = new TextEditingController();
    TextEditingController _password = new TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Center(child: Text("Sticker"),
          ),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Center(
            child: Container(
              margin:const  EdgeInsets.fromLTRB(0, 40, 0, 40),
              child: Column(
                children: [
                  const SizedBox(
                    width: 400,
                    height: 200,
                    child: Image(image: AssetImage("images/logo.png"),
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: TextField(
                      controller: _nickname,
                      decoration: const InputDecoration(
                        labelText: 'Nickname',
                      ),
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: TextField(
                      controller: _password,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0,20),
                    width: 120,
                    height: 50,
                    color: Colors.black,
                    child: TextButton(
                      onPressed: () async {
                        var nickname = _nickname.text;
                        var password = _password.text;
                        var tempurl=demoUrl;
                        demoUrl=demoUrl+nickname+"/"+password;
                        await findUser();
                        if(isOk){
                          AnimatedSnackBar.material('Giriş Yapılıyor!',
                              type: AnimatedSnackBarType.success).show(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=> const Home() ),
                          );
                        }
                        else {
                          AnimatedSnackBar.material('Kullanıcı Adı veya Şifre Hatalı!',
                              type: AnimatedSnackBarType.error).show(context);
                          demoUrl=tempurl;
                        }
                      },
                      child:const Text("Giriş Yap"),


                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.fromLTRB(0, 12, 0,12),
                    child: TextButton(onPressed: () { },

                      child:const Text("Üye Ol"),

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

