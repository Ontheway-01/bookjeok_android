import 'package:flutter/material.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 2,
        child: Scaffold(

          body: _body(),
        )
    );
  }
}

Widget _body(){
  return Column(
    children: [
      _tabBar(),
      Expanded(child: _tabBarView()),
    ],
  );
}

Widget _tabBar() {
  return TabBar(
    labelStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 16,
    ),
    tabs: [
      ButtonTheme(
      minWidth: 100,//버튼의 최소 가로 길이
      height: 50, //버튼의 세로 길이
      shape: RoundedRectangleBorder( //버튼을 둥글게 처리
          borderRadius: BorderRadius.circular(10)),
      child: Container(
        alignment: Alignment.center,
        child: Text(
            '쌓아보기', style: TextStyle( color: Colors.black ),),
      )
      ),
      Container(
        height: 50,
        alignment: Alignment.center,
        child: Text(
            '리스트형 보기', style: TextStyle( color: Colors.black,)
        ),
      ),
    ],
  );
}

Widget _tabBarView() {
  return TabBarView(
    children: [
      _stackView(),
      _listView(),
    ],
  );
}

// 임시로 회원 가입 한 유저 아이디, 비번 받아 오는 리스트 뷰 만듦
Widget _stackView() {
  var userID = [
    'bao_1', 'bao_2', 'bao_3', 'bao_4', 'bao_5', 'bao_6', 'bao_7', 'bao_8',
  ];

  var imageList = [
    'animal_1.png', 'animal_2.png', 'animal_3.png', 'animal_4.png',
    'animal_5.png', 'animal_6.png', 'animal_7.png', 'animal_8.png',
  ];

  var userPW = [
    '1111', '2222', '3333', '4444', '5555', '6666', '7777', '8888',
  ];

  return ListView.builder(
    itemCount: userID.length,
    itemBuilder: (context, index) {
      double width = MediaQuery
          .of(context)
          .size
          .width * 0.6;

      return Card(
        child: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(imageList[index]),
            ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: width,
              child: Column(
                children: [
                  Text('사용자 ID : ${userID[index]}', style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                  Text('사용자 PW : ${userPW[index]}', style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}


      // 나중에 읽은 책 없으면 제공되는 기본 화면 만들기
  //   Container(
  //     alignment: Alignment.center,
  //     child: const Text(
  //       "텅텅 빈 서재에요!",
  //       style: TextStyle(fontSize: 40),
  //     )
  // );


Widget _listView() {
  return Container(
    alignment: Alignment.center,
    child: const Text(
      "읽은 책이 없어여!",
      style: TextStyle(fontSize: 40),
    ),
  );
}