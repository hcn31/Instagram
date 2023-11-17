import 'package:flutter/material.dart';
import 'package:instagram/util/grid_view.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Search"),
            Container(
                child: Row(
              children: [Icon(Icons.calendar_month), Icon(Icons.menu)],
            ))
          ]),
        ),
        body: Column(
          children: [
            ClipRRect(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text(
                      " Search",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            //GridV(),
          ],
        ));
  }
}
