import 'dart:convert';

import 'package:bookjeok_android/models/custom_user.dart';
import 'package:bookjeok_android/pages/login/sign_up_page.dart';
import 'package:bookjeok_android/shared/page_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'login_success.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  CustomUser user = CustomUser(user_name: '', user_email: '', user_id: '', user_password: '', user_date: '');
  bool loginSuccess = false;

  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: idController,
              decoration: InputDecoration(hintText: 'id'),
              onChanged: (text) {
                print('idTap : $text');
                login();
              },
            ),
            TextField(
                controller: passwordController,
                decoration: InputDecoration(hintText: 'password'),
                onChanged: (text) {
                  print('pwTap : $text');
                  print('userpw : ${user.user_password}');
                  if(text == user.user_password) {
                    loginSuccess = true;
                  }
                },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                login();
                if(loginSuccess) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                    builder: (context) => PageStates()
                    ),
                    (route) => false
                  );
                }
                else{

                }
              },
              child: Text('login'),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SignUpPage()),
                );
              },
                child: Text('sign up'),

            ),
          ],
        )
    );
  }


  Future<void> login() async {
    final id = idController.text;

    final idUrl = 'http://10.0.2.2:8000/api/user/$id';
    final response = await http.get(Uri.parse(idUrl));


    if(response.statusCode == 200){
      var userInfo = jsonDecode(response.body.toString());
      user = CustomUser.formJson(userInfo);

    }
  }
}