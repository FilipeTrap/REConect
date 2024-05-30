import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../appbar.dart';
import '../input.dart';
import '../scrollable_column.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage() : super();
  @override
  _RegisterPage createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  bool _agreeWithTermsAndConditions = false;

  Future<Map<String, dynamic>> register(
      String username, String password, String email) async {
    const String appId = 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04';
    const String apiKey = 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp';
    const String apiUrl = 'https://parseapi.back4app.com';

    final response = await http.post(
      Uri.parse('$apiUrl/users'),
      headers: {
        'X-Parse-Application-Id': appId,
        'X-Parse-REST-API-Key': apiKey,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
        'email': email,
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to register: ${response.body}');
    }
  }

  Future<void> saveUserData(String username, String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('email', email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Cadastre-se"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Form(
          key: _formKey,
          child: ScrollableColumn(
            children: [
              CustomInputField(
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                controller: _emailController,
                validator: (String? email) {
                  if (email == null) {
                    return null;
                  }
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(email);
                  return emailValid ? null : "Email is not valid";
                },
              ),
              SizedBox(height: 24),
              CustomInputField(
                keyboardType: TextInputType.text,
                hintText: "Username",
                controller: _usernameController,
                validator: (String? username) {
                  if (username == null || username.isEmpty) {
                    return "Username is required";
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              CustomInputField(
                keyboardType: TextInputType.visiblePassword,
                hintText: "Senha",
                obscureText: true,
                controller: _passwordController,
                validator: (String? password) {
                  if (password == null) {
                    return null;
                  }
                  if (password.length < 6) {
                    return "Senha muito pequena";
                  }
                },
              ),
              SizedBox(height: 24),
              CustomInputField(
                keyboardType: TextInputType.visiblePassword,
                hintText: "Confirme sua senha",
                obscureText: true,
                controller: _passwordConfirmationController,
                validator: (String? password) {
                  if (password == null) {
                    return null;
                  }
                  if (password != _passwordController.value.text) {
                    return "Password is not confirmed";
                  }
                },
              ),
              SizedBox(height: 24),
              CustomCheckbox(
                label: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Ao fazer login e criar uma conta, você \n concorda com nossos",
                        style: TextStyle(
                          color: Color(0xFFa8a8a7),
                        ),
                      ),
                    ),
                    TextButton(
                      child: Text('Termos de uso'),
                      onPressed: () {
                        print("// Terms & Conditions");
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        " e ",
                        style: TextStyle(
                          color: Color(0xFFa8a8a7),
                        ),
                      ),
                    ),
                    TextButton(
                      child: Text('Declaração de Privacidade.'),
                      onPressed: () {
                        print("// Declaração de Privacidade.");
                      },
                    ),
                  ],
                ),
                value: _agreeWithTermsAndConditions,
                onChanged: (checked) => setState(
                    () => _agreeWithTermsAndConditions = checked ?? false),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                child: Text("Register"),
                onPressed: !_agreeWithTermsAndConditions
                    ? null
                    : () {
                        if (_formKey.currentState!.validate()) {
                          register(
                            _usernameController.value.text,
                            _passwordController.value.text,
                            _emailController.value.text,
                          ).then((result) {
                            saveUserData(_usernameController.value.text,
                                    _emailController.value.text)
                                .then((_) {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/main', (_) => false);
                            });
                          }).catchError((Object exception) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      'Failed to register: ${exception.toString()}')),
                            );
                          });
                        }
                      },
              ),
              Expanded(
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Color(0xFFb8b8b8),
                    ),
                  ),
                  TextButton(
                    child: Text("Login"),
                    onPressed: () =>
                        {Navigator.of(context).pushNamed("/login")},
                  ),
                ],
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
