class CustomUser {
  final String userName;
  final String userEmail;
  final String userId;
  final String userPassword;

  CustomUser({
    required this.userName,
    required this.userEmail,
    required this.userId,
    required this.userPassword,
  });

  factory CustomUser.formJson(Map<String,dynamic> json){
    return CustomUser(
        userName: json['user_name'],
        userEmail: json['user_email'],
        userId: json['user_id'],
        userPassword: json['user_password'],
    );

  }
}