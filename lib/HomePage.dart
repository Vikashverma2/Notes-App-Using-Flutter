import 'package:flutter/material.dart';
import 'package:notes/Pages/AddNewPage.dart';
import 'package:notes/Pages/BookMark.dart';
import 'package:notes/Pages/Divcontainor.dart';
import 'package:notes/Pages/MySearchbar.dart';
import 'package:notes/Pages/Mydrower.dart';
import 'package:notes/Pages/NotesDetailsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController title = TextEditingController();
  TextEditingController des = TextEditingController();

  bool IsNotes = true;
  List notes = [];

  void addNote() {
    var _note = {
      "title": title.text,
      "des": des.text,
    };

    setState(() {
      notes.add(_note);
      title.clear();
      des.clear();
    });

    print(notes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => AddNewPage(
                        title: title,
                        note: des,
                        onPress: () {
                          addNote();
                        },
                      )),
            );
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Padding(padding: EdgeInsets.all(10)),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
        backgroundColor: Colors.black,
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            MySearchBar(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      IsNotes = true;
                    });
                  },
                  child: Text(
                    "Notes",
                    style: TextStyle(
                        color: IsNotes ? Colors.blue : Colors.white,
                        fontSize: 25),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      IsNotes = false;
                    });
                  },
                  child: Text(
                    "BookMark",
                    style: TextStyle(
                        color: IsNotes ? Colors.white : Colors.blue,
                        fontSize: 25),
                  ),
                ),
                Icon(
                  Icons.grid_view_sharp,
                  color: Colors.white,
                  size: 25,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: IsNotes
                    ? GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        children: notes
                            .map((e) => InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NotesDatialsPage()),
                                    );
                                  },
                                  child: DivContaior(
                                    title: e["title"],
                                  ),
                                ))
                            .toList())
                    : ListView(
                        children: notes
                            .map((e) => InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NotesDatialsPage()),
                                    );
                                  },
                                  child: BookMark(
                                    title: e["title"],
                                  ),
                                ))
                            .toList())),
          ]),
        ));
  }
}
