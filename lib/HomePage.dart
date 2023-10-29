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
  List notes = [
    {
      "title": "C programming language is a MUST for students",
      "des":
          "C programming is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language. ",
    },
    {
      "title": "What is Flutter?",
      "des":
          "In the last few years of this decade, we have seen a lot of app startups emerging from all across the globe. With the rise in technology and the availability of smartphones, many startups find it easy to connect with users and clients via apps. ",
    },
    {
      "title": "Why is Flutter a boon for Startups and Companies? ",
      "des":
          "The main goal of any company is to acquire more customers, and in the case of app startups, their main concern is to increase user acquisition, irrespective of the platform (iOS or Android). ",
    },
  ];
  List bookMark = [
    {
      "title": "What is Flutter?",
      "des":
          "In the last few years of this decade, we have seen a lot of app startups emerging from all across the globe. With the rise in technology and the availability of smartphones, many startups find it easy to connect with users and clients via apps. ",
    },
  ];

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

  void addNoteInBookMark(String title, String des) {
    var newNote = {
      "title": title,
      "des": des,
    };
    setState(() {
      bookMark.add(newNote);
    });
    print("Note added in book mark");
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
                                              NotesDatialsPage(
                                                title: e["title"],
                                                des: e["des"],
                                                onBookMarkedClicked: () {
                                                  addNoteInBookMark(
                                                      e["title"], e["des"]);
                                                },
                                              )),
                                    );
                                  },
                                  child: DivContaior(
                                    title: e["title"],
                                  ),
                                ))
                            .toList())
                    : ListView(
                        children: bookMark
                            .map((e) => InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NotesDatialsPage(
                                                title: e["title"],
                                                des: e["des"],
                                                onBookMarkedClicked: () {},
                                              )),
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
