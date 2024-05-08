import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text,
                        )
                            .then((result) {
                          Navigator.of(context)
                              .pushNamedAndRemoveUntil('/main', (_) => false);
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
