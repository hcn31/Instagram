import 'package:flutter/material.dart';

class UserPosts extends StatefulWidget {
  final String name;
  UserPosts({required this.name});

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  final List<Color> colorr = [Colors.red, Colors.grey];

  int indexColor = 0;

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
                        widget.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.menu)
                ])),
        Container(
          height: 400,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite, color: colorr[indexColor]),
                  onPressed: () {
                    setState(() {
                      if (indexColor == 0)
                        indexColor = 1;
                      else
                        indexColor = 0;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Icon(Icons.chat_bubble_outline),
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
                    text: widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        " today i ve graduated from my school soo am soo gappy to anounce that and share it with you")
              ]),
            )),
      ],
    );
  }
}
