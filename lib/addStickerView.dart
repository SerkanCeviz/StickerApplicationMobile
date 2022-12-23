import 'package:flutter/material.dart';

class AddSticker extends StatefulWidget {
  const AddSticker({Key? key}) : super(key: key);

  @override
  State<AddSticker> createState() => _AddStickerState();
}

class _AddStickerState extends State<AddSticker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Add Package"),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.only(top: 30),
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(16),
              ),
              child: TextField(
                controller: TextEditingController(),
                onChanged : (v)=> TextEditingController().text = v,
                decoration: const InputDecoration(
                  labelText: 'Package Name',
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.only(top: 30),
              color: Colors.white70,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(16),
              ),
              child: TextField(
                controller: TextEditingController(),
                onChanged : (v)=> TextEditingController().text = v,
                decoration: const InputDecoration(
                  labelText: 'Image Url',
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(onPressed: (){}, child: Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
