import 'package:flutter/material.dart';
import 'package:instagram/util/bubles_stories.dart';
import 'package:instagram/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "saad",
    "saad",
    "saad",
    "saad",
    "saad",
    "saad",
    "saad",
    "saad",
    "saad"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("INSTAGRAM"),
              Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Icon(Icons.favorite),
                  ),
                  Icon(Icons.share)
                ],
              )
            ],
          )),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubleStories(name: people[index]);
                }),
          ),

          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: people.length,
            itemBuilder: (context, index) {
              return UserPosts(name: people[index]);
            },
          ))

          //instead of using just a row we will use a listview to make it scrollable
        ],
      ),
    );
  }
}
