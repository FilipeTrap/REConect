import 'dart:convert';
import 'package:http/http.dart' as http;

class SessionManager {
  static final SessionManager _instance = SessionManager._internal();

  factory SessionManager() {
    return _instance;
  }

  SessionManager._internal();

  String? _sessionToken;
  String? _username;
  String? _email;
  String? _userId;

  String? get sessionToken => _sessionToken;
  String? get username => _username;
  String? get email => _email;
  String? get userId => _userId;

  Future<void> setSessionToken(String token) async {
    _sessionToken = token;
    await _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    if (_sessionToken != null) {
      final url = Uri.parse('https://parseapi.back4app.com/users/me');
      final response = await http.get(
        url,
        headers: {
          'X-Parse-Application-Id': 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04',
          'X-Parse-REST-API-Key': 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp',
          'X-Parse-Session-Token': _sessionToken!,
        },
      );

      if (response.statusCode == 200) {
        final userData = jsonDecode(response.body);
        _username = userData['username'];
        _email = userData['email'];
        _userId = userData['objectId'];
        print(
            'Dados do usuário obtidos: Username: $_username, Email: $_email, User ID: $_userId');
      } else {
        print('Erro ao obter dados do usuário: ${response.statusCode}');
      }
    }
  }

  void clearSessionData() {
    _sessionToken = null;
    _username = null;
    _email = null;
    _userId = null;
  }

  Future<bool> updatePassword(String newPassword) async {
    try {
      if (_sessionToken == null || _userId == null) {
        print('Erro: Token de sessão ou ID do usuário não disponível');
        return false;
      }

      final updateUrl =
          Uri.parse('https://parseapi.back4app.com/users/$_userId');
      final response = await http.put(
        updateUrl,
        headers: {
          'X-Parse-Application-Id': 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04',
          'X-Parse-REST-API-Key': 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp',
          'X-Parse-Session-Token': _sessionToken!,
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'password': newPassword}),
      );

      print('Resposta da API: ${response.statusCode}');
      if (response.statusCode == 200) {
        print('Senha atualizada com sucesso');
        return true;
      } else {
        print('Erro ao atualizar a senha: ${response.body}');
        return false;
      }
    } catch (e) {
      print('Exceção ao atualizar a senha: $e');
      return false;
    }
  }
}
