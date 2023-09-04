import 'package:bookjeok_android/colors/colors.dart';
import 'package:bookjeok_android/pages/login/login_page.dart';
import 'package:bookjeok_android/pages/test_page.dart';
import 'package:bookjeok_android/pages/user/user_page.dart';
import 'package:bookjeok_android/shared/page_states.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookjeokApp());
}

class BookjeokApp extends StatelessWidget {
  const BookjeokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: coral),
      home: PageStates(),

    );
  }
}
