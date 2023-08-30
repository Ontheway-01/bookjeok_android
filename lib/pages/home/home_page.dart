import 'package:flutter/material.dart';
import './home_tabscreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double search_width = MediaQuery.of(context).size.width * 0.8;
    
    return Scaffold(
      body:
        Column(   // 제일 큰 화면 구조(가로위젯을 세로로 3개 배치)
          children: [
            Padding(    // 1. 첫 번째 가로위젯 : 검색하기, 사진찍기
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(    // 1-1. 검색하기 기능
                    color: Colors.white10,
                    width: search_width,
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey,),
                        Text('책 검색하기', style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  // 사진찍기 기능은 image_picker 라이브러리 추가해야함.
                  IconButton(   // 1-2. 사진찍기 기능
                    icon: Icon(Icons.photo_camera),
                    onPressed: (){  //책 사진 찍어서 인식하는 코드
                      },
                  )
                ],
              ),
            ),
            Padding(  // 2. 두 번째 가로위젯 : 날짜 표시, 날짜변경 아이콘
              padding: const EdgeInsets.all(7.0),
              child: Row(   // 2-1. 날짜 표시 위젯
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('2023년 (1)', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                  SizedBox(width: 8,),
                  IconButton(icon: Icon(Icons.arrow_downward), iconSize: 35, onPressed: (){
                    // 버튼 누르면 날짜 변경할 수 있게 하는 기능 넣어야함
                  },),
                ],
              ),
            ),
            SizedBox(   // 3. 세 번째 가로위젯 : tabBar
              height: MediaQuery.of(context).size.height-200,
              child: HomeTabScreen(),
            )
          ],
        ),
    );
  }
}
