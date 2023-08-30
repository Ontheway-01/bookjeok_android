import 'dart:convert';

List<CustomUser> usersFromJson(String str) => List<CustomUser>.from(json.decode(str));
String usersToJson(List<CustomUser> data) => json.encode(List<dynamic>.from(data.map((e) => null)));

class CustomUser {
  String user_name;
  String user_email;
  String user_id;
  String user_password;
  String user_date;

  CustomUser({
    required this.user_name,
    required this.user_email,
    required this.user_id,
    required this.user_password,
    required this.user_date,
  });

  factory CustomUser.formJson(Map<String,dynamic> json) => CustomUser(
        user_name: json['user_name'],
        user_email: json['user_email'],
        user_id: json['user_id'],
        user_password: json['user_password'],
        user_date: json['user_date'].toString(),
    );
    Map<String,dynamic> toJson() => {
      "user_name": user_name,
      "user_email": user_email,
      "user_id": user_id,
      "user_password": user_password,
    };

  }
