import 'package:bookjeok_android/colors/colors.dart';
import 'package:bookjeok_android/pages/character/character_page.dart';
import 'package:bookjeok_android/pages/home/home_page.dart';
import 'package:bookjeok_android/pages/library/library_page.dart';
import 'package:bookjeok_android/pages/setting/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageStates extends StatefulWidget {
  const PageStates({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<PageStates> {
  int _selectedIndex = 0;

  List<Widget> pages = <Widget>[
    HomePage(),
    LibraryPage(),
    CharacterPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: coral,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: '홈'),
            const BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: '서재'),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: '캐릭터'),
            const BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
    );
  }
}