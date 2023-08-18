import 'package:bookjeok_android/colors/colors.dart';
import 'package:bookjeok_android/pages/character/character_data.dart';
import 'package:bookjeok_android/pages/character/character_item.dart';
import 'package:flutter/material.dart';

import 'character.dart';
class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //버튼 모서리 둥글게 적용 암된
                 ButtonTheme(
                    height: 15,
                    minWidth: 25,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart,size: 10,),
                      label: Text(
                        'Store',
                        style: TextStyle(
                            fontSize: 10,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '나의 캐릭터',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
  
                  ),
                ),
              ],
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('cat.png'),
                    height: 100,
                    width: 100,
                    ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '캐릭터 스토기 보러가기',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '나의 북적 List',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(

                  ),
                  onPressed: () {},
                  label: Text(
                    '전체보기',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  icon: Icon(Icons.arrow_drop_down,size: 10,),
                ),
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(
                    0x59A3BEFF).withOpacity(0.2)),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_left)),
                    Text(
                        '1단계 (0~30cm)',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
                  ],
                ),
              ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: characterData.map((characterItem) => CharacterItem(
                characterItem.name,
                characterItem.image,
                characterItem.height,
                characterItem.date
            )).toList(),
          )


        ],
      )
    );
  }
}