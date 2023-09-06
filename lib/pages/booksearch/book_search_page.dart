import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookSearchPage extends StatefulWidget {
  const BookSearchPage({super.key});

  @override
  State<BookSearchPage> createState() => _BookSearchPageState();
}

class _BookSearchPageState extends State<BookSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          '책 검색하기',
          style: TextStyle(
            fontSize: 20
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
