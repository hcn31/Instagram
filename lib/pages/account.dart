import 'package:flutter/material.dart';
import 'package:instagram/util/bubles_stories.dart';
import 'package:instagram/util/grid_view.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.lock),
                Text("HCN"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            Row(
              children: [
                Container(
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                Icon(Icons.menu)
              ],
            )
          ],
        )),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  Column(
                    children: [
                      Text("2555",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Posts")
                    ],
                  ),
                  Column(
                    children: [
                      Text("2555",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Follors")
                    ],
                  ),
                  Column(
                    children: [
                      Text("2555",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Following")
                    ],
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "HCN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "🆘🆘🆘🆘"),
                      Text(
                        "https://www.youtube.com/watch?v=z5PH2s9ytl8",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Edit Profil")),
                  ElevatedButton(onPressed: () {}, child: Text("Share Profil")),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.follow_the_signs))
                ],
              ),
              Row(
                children: [
                  BubleStories(name: "Bros"),
                  BubleStories(name: "New"),
                ],
              ),

              //GridV()
            ],
          ),
        ));
  }
}
