import 'package:flutter/material.dart';

class NotesDatialsPage extends StatelessWidget {
  const NotesDatialsPage({super.key});

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
            child: Icon(
              Icons.edit_document,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "We don't want to bore you with long textual tutorials or videos.",
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
              "C programming is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language. It keeps fluctuating at number one scale of popularity along with Java programming language, which is also equally popular and most widely used among modern software programmers.",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
