import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/custom_user.dart';
class LoginSuccess extends StatefulWidget {
  final CustomUser user;
  const LoginSuccess(this.user);

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'user_id: ${widget.user.user_id}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'user_email: ${widget.user.user_email}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'user_name: ${widget.user.user_name}',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'user_password: ${widget.user.user_password}',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

