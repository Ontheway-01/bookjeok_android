import 'dart:convert';

import 'package:bookjeok_android/models/custom_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  List<CustomUser> users = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getUser(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context,index) {
                return Container(
                  height: 150,
                  color: Colors.greenAccent,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'user_id: ${users[index].user_id}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'user_email: ${users[index].user_email}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'user_name: ${users[index].user_name}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'user_password: ${users[index].user_password}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                );
              }
          );
        }
        else if(snapshot.hasError){
          return Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Error: ${snapshot.error}      ${users.length}',
              style: TextStyle(
                fontSize: 18
              ),
            ),
          );
        }
        else{
          return Center(
            child: Text(snapshot.hasData.toString()),
          );
        }
      }
    );
  }

  Future<List<CustomUser>> getUser() async{
    final url = 'http://10.0.2.2:8000/CustomUser';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for(Map<String,dynamic> index in data){
        users.add(CustomUser.formJson(index));
      }
      return users;
    } else{
      throw Exception('failed');
    }
  }
}
