import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/custom_user.dart';
import 'package:http/http.dart' as http;

class UserProvider with ChangeNotifier{
  UserProvider(){
    this._fetchUsers();
  }

  List<CustomUser> _users = [];

  List<CustomUser> get users{
    return[..._users];
  }

  List<CustomUser> getUserList(){
    _fetchUsers();
    return _users;
  }

  /*CustomUser getUserById(List<CustomUser> _users, String userId){
    if(_users.contains(userId)){
      return
    }
  }*/

  void _fetchUsers() async{
    final Uri url = 'http://localhost:8000/api/user/?format=json' as Uri;
    final response = await http.get(url);
    if(response.statusCode==200){
      List<CustomUser> result = jsonDecode(response.body).map<CustomUser>((json) => CustomUser.formJson(json)).toList();

      _users.clear();
      _users.addAll(result)
      notifyListeners();
    }
  }
}