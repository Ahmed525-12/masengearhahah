import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Center(child: Text("masenger")),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              StoryRow(
                  NetworkImage(
                      "https://ahmed525-12.github.io/AHMED_SAYED/img/my%20photo.jpg"),
                  "Ahmed Sayed"),
              Padding(
                padding: const EdgeInsets.only(left: 9, right: 7),
                child: StoryRow(
                    NetworkImage(
                        "https://ahmed525-12.github.io/AHMED_SAYED/img/my%20photo.jpg"),
                    "ahmed mohamed"),
              ),
              StoryRow(
                  NetworkImage(
                      "https://ahmed525-12.github.io/AHMED_SAYED/img/my%20photo.jpg"),
                  "Omar Mohamed")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ChatMAsengear(
                  NetworkImage(
                      "https://ahmed525-12.github.io/AHMED_SAYED/img/my%20photo.jpg"),
                  " اديني الدرجه كامله باليز ",
                  "omar mohamed"),
              ChatMAsengear(
                  NetworkImage(
                      "https://ahmed525-12.github.io/AHMED_SAYED/img/my%20photo.jpg"),
                  " اديني الدرجه كامله باليز ",
                  "omar mohamed"),
              ChatMAsengear(
                  NetworkImage(
                      "https://ahmed525-12.github.io/AHMED_SAYED/img/my%20photo.jpg"),
                  " اديني الدرجه كامله باليز ",
                  "omar mohamed")
            ],
          ),
        )
      ]),
    );
  }
}

class StoryRow extends StatelessWidget {
  final String text;
  final ImageProvider image;
  StoryRow(this.image, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: image,
          ),
        ),
        Text(text),
      ],
    );
  }
}

class ChatMAsengear extends StatelessWidget {
  final ImageProvider images;
  final String textname;
  final String textchat;
  ChatMAsengear(this.images, this.textchat, this.textname);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: images,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [Text(textname), Text(textchat)],
            ),
          )
        ],
      ),
    );
  }
}
