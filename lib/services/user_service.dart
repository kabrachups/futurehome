import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../models/user.dart';

/// Getting the user data from database

// for testing purposes
String fakeUserJsonString = '''
      {
        "id": 1,
        "firstName": "firstName",
        "lastName": "lastName",
        "mobile": 1234567890,
        "email": "email@email.con",
        "priority": 1,
        "updatedAt": "2022-02-02"
       }
      ''';

class UserService extends ChangeNotifier {
  Future<User> get user {
    return _getUser();
  }

  Future<User> _getUser() async {
    // TODO implement try|catch
    // TODO implement real http request
    String userJsonString = await Future.value(fakeUserJsonString);
    Map<String, dynamic> userMap = jsonDecode(userJsonString);
    User user = User.fromJson(userMap);
    return user;
  }
}
