import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'dart:convert';
import 'package:http/http.dart';
import '../utils/api.dart';
import '../model/user.dart';
import 'package:http/http.dart' as http;

class UserProvider with ChangeNotifier {
  late User user;

  Future<void> getUserProfile(String username) async {
    final url = Uri.parse('${Api.api}/users/${username}');

    try {
      final response =
          await http.get(url, headers: {'Authorization': 'token ${Api.token}'});
      final responseData = json.decode(response.body) as Map<String, dynamic>;

      user = User(
          name: responseData['name'],
          login: responseData['login'],
          id: responseData['id'],
          image: responseData['avatar_url']);
    } catch (e) {
      throw Exception('Desculpe, não conseguimos encontrar nenhum usuário.');
    }
  }
}
