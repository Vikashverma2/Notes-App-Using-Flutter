import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: EdgeInsets.only(left: 20),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        )
      ],
    );
  }
}
