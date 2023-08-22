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
        Column(   // 제일 큰 화면 구조(가로 위젯을 세로로 3개 배치)
          children: [
            Row(    // 1. 첫 번째 가로 위젯 : 검색하기, 사진찍기
              children: [
                SizedBox(   // 1-1. 검색하기 기능
                  width: search_width,
                  height: 40,
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey,),
                      Text('책 검색하기', style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
                SizedBox(width: 20),  // 여백 주는 빈 위젯
                // 사진찍기 기능은 image_picker 라이브러리 추가해야함.
                Icon(Icons.photo_camera), // 1-2. 사진찍기 기능
              ],
            ),
            Container(
              color: Colors.yellow,
              child: Column(
              children: [
                SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Text('검색하기 박스'),
                      Icon(Icons.question_mark),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Text('2023년 (1)', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      Icon(Icons.expand_more), // 색칠된 삼각형 모양은 직접 커스터마이징 해야함
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height-160,
                  child: HomeTabScreen(),
                )
                 // 여기에 stateful widget으로 tabbarview가 들어가야함, 따로 코드 빼둠
              ],
            ),
      ),
          ],
        )
    );
  }
}
