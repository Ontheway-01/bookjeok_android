import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                  Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_ios_new),
              padding: EdgeInsets.all(10),)
          ],

        ),
      ),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: 'name'),
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(hintText: 'email'),
          ),
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
              onPressed: (){
                submitData();
                Navigator.pop(context);
                },
              child: Text('Submit')
          ),
        ],
      ),
    );
  }

  Future<void> submitData() async {
    final name = nameController.text;
    final email = emailController.text;
    final id = idController.text;
    final password = passwordController.text;
    final body = {
      "user_name": name,
      "user_email": email,
      "user_id": id,
      "user_password": password,
    };

    final url = 'http://10.0.2.2:8000/api/user/';
    final uri = Uri.parse(url);
    final response = await http.post(uri, body: body);

    print(response);

  }
}
