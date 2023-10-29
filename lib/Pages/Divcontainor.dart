import 'package:flutter/material.dart';

class DivContaior extends StatelessWidget {
  final String title;
  const DivContaior({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                maxLines: 5,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12-Oct-2023",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Text(
                    "4:40 AM",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              )
            ],
          )),
    );
  }
}
