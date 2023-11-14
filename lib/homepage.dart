import 'package:flutter/material.dart';
import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  final List<Widget> homes = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: homes[
            _currentIndex], //the index of the clicked item in the bottom navigate bar
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, //?????
          onTap: (int newIndwx) {
            setState(() {
              _currentIndex =
                  newIndwx; //give the index of the clicked item to the variable
            });
          },
          type: BottomNavigationBarType.fixed, //to add more than 3 items
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shope"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account")
          ]),
    );
  }
}
