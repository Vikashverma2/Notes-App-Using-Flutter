import 'package:flutter/material.dart';

class BookMark extends StatelessWidget {
  final String title;
  const BookMark({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.star,
                        color: Colors.black,
                        size: 18,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
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
              ),
            ],
          )),
    );
  }
}
