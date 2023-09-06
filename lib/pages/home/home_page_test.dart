import 'package:bookjeok_android/pages/booksearch/book_search_page.dart';
import 'package:flutter/material.dart';
import './home_tabscreen.dart';

class HomePageTest extends StatefulWidget {
  @override
  _HomePageTestState createState() => _HomePageTestState();
}

class _HomePageTestState extends State<HomePageTest> {

  @override
  Widget build(BuildContext context) {
    double search_width = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const BookSearchPage())
                  );
                },
                child: Container(
                    margin: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      Icon(Icons.search),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      Text(
                        '책 검색하기',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap:(){

                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green
                      ),
                    child:Row(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                        Text(
                          'YEAR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40
                          ),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                        Icon(
                            Icons.arrow_drop_down,
                          size: 40,
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue
                )
            ),
          )
        ],
      )


    );
  }
}
