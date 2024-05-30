import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'session_manager.dart';

class GiftPage extends StatefulWidget {
  @override
  _GiftPageState createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gift'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showUserData,
          child: Text('Show User Data'),
        ),
      ),
    );
  }

  void _showUserData() async {
    final sessionManager = SessionManager();
    await sessionManager.setSessionToken(sessionManager.sessionToken!);

    final username = sessionManager.username;
    final email = sessionManager.email;

    print('Username: $username');
    print('Email: $email');
  }
}
