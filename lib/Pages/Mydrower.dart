import 'package:flutter/material.dart';
import 'package:notes/HomePage.dart';
import 'package:notes/Pages/lablePage.dart';
import 'package:notes/Pages/RemindersPage.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int index = 0;

  void handClick(int buttonIndex) {
    setState(() {
      index = buttonIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            selected: index == 0 ? true : false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              handClick(0);
            },
            leading: Icon(Icons.lightbulb_outline),
            title: Text(
              "Notes",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            selected: index == 1 ? true : false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => RemiderPage()),
              );
              handClick(1);
            },
            leading: Icon(Icons.notifications_outlined),
            title: Text(
              "Reminders",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            selected: index == 2 ? true : false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyLabelPage()),
              );

              handClick(2);
            },
            leading: Icon(Icons.add),
            title: Text(
              "Create new label",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            selected: index == 3 ? true : false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            onTap: () {
              handClick(3);
            },
            leading: Icon(Icons.archive_outlined),
            title: Text(
              "Archive",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            selected: index == 4 ? true : false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            onTap: () {
              handClick(4);
            },
            leading: Icon(Icons.delete_forever_outlined),
            title: Text(
              "Deleted",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            selected: index == 5 ? true : false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            onTap: () {
              handClick(5);
            },
            leading: Icon(Icons.settings_outlined),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            selected: index == 6 ? true : false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            selectedColor: Colors.white,
            selectedTileColor: Colors.blue,
            onTap: () {
              handClick(6);
            },
            leading: Icon(Icons.help_outline_outlined),
            title: Text(
              "Help & feedback",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
