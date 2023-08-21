import 'package:bookjeok_android/pages/library/library_tab_bar.dart';
import 'package:bookjeok_android/shared/page_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(3),
                child:
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                              Icons.search,
                            color: CupertinoColors.systemGrey2,
                          ),
                      )
                  )
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    '나의 서재',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height-150,
            child: LibraryTabBar(),
          )

        ],
      )
    );
  }
}