import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridV extends StatefulWidget {
  const GridV({super.key});

  @override
  State<GridV> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GridV> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              color: Colors.grey,
            ),
          );
        });
  }
}
