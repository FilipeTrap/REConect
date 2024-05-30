import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'session_manager.dart'; // Importe a classe SessionManager

class User {
  String username;
  String email;

  User({required this.username, required this.email});
}

class LoginPage extends StatefulWidget {
  const LoginPage() : super();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMeChecked = false;
  late User? currentUser;

  Future<Map<String, dynamic>> login(String email, String password) async {
    const String appId = 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04';
    const String apiKey = 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp';
    const String apiUrl = 'https://parseapi.back4app.com/login';

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'X-Parse-Application-Id': appId,
        'X-Parse-REST-API-Key': apiKey,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      print('Login bem-sucedido. Token: ${responseData['sessionToken']}');
      return responseData;
    } else {
      throw Exception('Failed to login: ${response.body}');
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
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Image.asset(
                    "assets/icons/capiLogoLeft.png",
                    width: 300,
                    height: 100,
                    alignment: Alignment.bottomLeft,
                  ),
                  SizedBox(height: 16),
                  AppBar(
                    title: Text("Seu rolê dos sonhos\nna palma da mão."),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira um email válido';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Senha",
                    ),
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, insira uma senha';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMeChecked,
                        onChanged: (value) {
                          setState(() {
                            _rememberMeChecked = value ?? false;
                          });
                        },
                      ),
                      Text("Lembre-me"),
                    ],
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        login(
                          _emailController.text,
                          _passwordController.text,
                        ).then((result) {
                          saveUserData(result['username'], result['email'])
                              .then((_) {
                            setState(() {
                              currentUser = User(
                                  username: result['username'],
                                  email: result['email']);
                            });
                            // Armazena o token usando o SessionManager
                            SessionManager()
                                .setSessionToken(result['sessionToken']);
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              '/main',
                              (_) => false,
                              arguments: currentUser,
                            );
                          });
                        }).catchError((error) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Erro ao fazer login: $error"),
                            ),
                          );
                        });
                      }
                    },
                    child: Text("Login"),
                  ),
                  SizedBox(height: 12),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/register");
                    },
                    child: Text("Registrar"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
