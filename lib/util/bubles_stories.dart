import 'package:flutter/material.dart';

class BubleStories extends StatelessWidget {
  final String name;
  BubleStories({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
          ),
          Text(name)
        ]));
  }
}
