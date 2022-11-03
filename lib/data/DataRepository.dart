import 'dart:convert';

import 'package:http/http.dart';
import 'model/Profile.dart';

class DataRepository {
  Future<Profile> fetchUser(String userName) async {
    String api = 'https://api.github.com/users/${userName}';
    return await get(Uri.parse(api)).then((data) {
      final jsonData = json.decode(data.body);

      if (jsonData['message'] == "Not Found") {
        throw UserNotFoundException();
      } else {
        final profile = Profile(
          name: jsonData['login'],
          id: jsonData['id'],
          image: jsonData['avatar_url'],
        );
        return profile;
      }
    }).catchError((context) {
      throw UserNotFoundException();
    });
  }
}

class UserNotFoundException implements Exception {}
