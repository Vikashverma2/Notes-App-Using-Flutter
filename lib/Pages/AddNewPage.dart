import 'package:flutter/material.dart';

class AddNewPage extends StatelessWidget {
  final VoidCallback onPress;
  final TextEditingController title;
  final TextEditingController note;
  const AddNewPage(
      {super.key,
      required this.onPress,
      required this.title,
      required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        title: Text(
          "New Notes",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: onPress,
              child: Icon(
                Icons.save,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: title,
              style: TextStyle(color: Colors.white, fontSize: 25),
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            TextFormField(
              controller: note,
              style: TextStyle(color: Colors.white, fontSize: 18),
              decoration: InputDecoration(
                  hintText: "Note",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            )
          ],
        ),
      ),
    );
  }
}
