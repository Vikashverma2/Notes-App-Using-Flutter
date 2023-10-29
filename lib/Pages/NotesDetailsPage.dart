import 'package:flutter/material.dart';

class NotesDatialsPage extends StatelessWidget {
  final VoidCallback onBookMarkedClicked;
  final String title;
  final String des;
  const NotesDatialsPage(
      {super.key,
      required this.onBookMarkedClicked,
      required this.title,
      required this.des});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(10),
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                  onTap: onBookMarkedClicked,
                  child: Icon(
                    Icons.star_border,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.edit_document,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
             title,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "12-Oct-2023",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  "4:40 AM",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              des,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
