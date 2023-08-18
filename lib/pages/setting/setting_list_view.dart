import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingListView extends StatefulWidget {
  const SettingListView({super.key});

  @override
  State<SettingListView> createState() => _SettingListState();
}

class _SettingListState extends State<SettingListView> {
  static var settingIconList =
  [[Icons.person, Icons.pallet, Icons.view_list_outlined, Icons.logout],
  [Icons.question_mark, Icons.mail_rounded, Icons.mode_comment_rounded],
  [Icons.thumb_up, Icons.adb]];

  static var settingLblList = [['프로필 변경', '컬러테마 설정', '독서기록 내보내기', '로그아웃'],
  ['자주 묻는 질문', '버그, 오류 제보', '의견  보내기'],
  ['평점 남기기', '개발자 소개']];

  static var settingHeaderLblList = ['유저 설정', '지원', '기타'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('cat.png'),
                    height: 70,
                    width: 70,
                  ),
                  Text(
                    '애플 북적이',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),

            for(int headerNum=0;headerNum<settingHeaderLblList.length;headerNum++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    settingHeaderLblList[headerNum],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: settingIconList[headerNum].length,
                    itemBuilder: (context, index) {
                      return Card(
                          child: ListTile(
                              title: Text(
                                settingLblList[headerNum][index],
                              ),
                              leading: SizedBox(
                                  height: 15,
                                  width: 15,
                                  child: Icon(settingIconList[headerNum][index]),
                              )
                          )
                      );

                    },
                  )
                ],
              ),
          ],
        )
      )
    );
  }
}
