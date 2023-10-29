import 'package:flutter/material.dart';
import 'package:notes/Pages/Mydrower.dart';

class RemiderPage extends StatelessWidget {
  const RemiderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reminders"),
        actions: [
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.grid_view,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 80,
              ),
              SizedBox(height: 30),
              Text(
                "Notes with upcoming reminders appear here",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
