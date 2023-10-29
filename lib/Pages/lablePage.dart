import 'package:flutter/material.dart';

class MyLabelPage extends StatelessWidget {
  const MyLabelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit labels"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  hintText: "Create new label",
                  hintStyle: TextStyle(
                    fontSize: 20,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
