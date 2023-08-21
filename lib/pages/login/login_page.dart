import 'package:bookjeok_android/pages/login/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(hintText: 'password'),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpPage()),
                );
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

  /*Future<void> login() async {
    var UserList
  }*/
}