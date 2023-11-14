import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final List<Color> colorr = [Colors.grey, Colors.red];
  int indexColor = 0;
  final String name;
  UserPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.start, // to get all the elements to left
      children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[400], shape: BoxShape.circle),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.menu)
                ])),
        Container(
            height: 400,
            color: Colors.grey,
            child: Text(
              '$indexColor',
              style: TextStyle(color: Colors.red),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite),
                  onPressed: () {
                    setState() {
                      if (indexColor == 0) indexColor = 1;
                      indexColor = 0;
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Icon(Icons.chat_bubble_outline,
                      color: colorr[indexColor]),
                ),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.bookmark)
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 0),
            child: Row(
              children: [
                Text("Liked by "),
                Text("ahmed ", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("and "),
                Text("others")
              ],
            )),
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 0),
            child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
                TextSpan(
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " today i ve graduated from my school soo am soo gappy to anounce that and share it with you")
              ]),
            )),
      ],
    );
  }
}
