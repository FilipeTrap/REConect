import 'package:flutter/material.dart';
import 'session_manager.dart';

class EditarPerfilPage extends StatefulWidget {
  @override
  _EditarPerfilPageState createState() => _EditarPerfilPageState();
}

class _EditarPerfilPageState extends State<EditarPerfilPage> {
  final _formKey = GlobalKey<FormState>();
  final _sessionManager = SessionManager();
  final _usernameController = TextEditingController();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.text = _sessionManager.username ?? '';
    print(
        'Init State: Username: ${_sessionManager.username}, Email: ${_sessionManager.email}');
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: TextEditingController(
                      text: _sessionManager.email ?? 'Email não encontrado'),
                  decoration: InputDecoration(labelText: 'Email'),
                  readOnly: true,
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: 'Usuário'),
                  readOnly: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome de usuário';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _currentPasswordController,
                  decoration: InputDecoration(labelText: 'Senha Atual'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a senha atual';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _newPasswordController,
                  decoration: InputDecoration(labelText: 'Nova Senha'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a nova senha';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _repeatPasswordController,
                  decoration:
                      InputDecoration(labelText: 'Confirmar Nova Senha'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, confirme a nova senha';
                    }
                    if (value != _newPasswordController.text) {
                      return 'As senhas não coincidem';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _updatePassword,
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _updatePassword() async {
    if (_formKey.currentState?.validate() ?? false) {
      print('Formulário validado com sucesso');
      print('Email: ${_sessionManager.email}');
      print('Nova Senha: ${_newPasswordController.text}');

      try {
        bool success = await _sessionManager.updatePassword(
          _newPasswordController.text,
        );

        if (success) {
          print('Senha alterada com sucesso');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Senha alterada com sucesso!')),
          );
          Navigator.pop(context);
        } else {
          print('Erro ao alterar a senha');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Erro ao alterar a senha')),
          );
        }
      } catch (e) {
        print('Exceção ao alterar a senha: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao alterar a senha: $e')),
        );
      }
    } else {
      print('Formulário não validado');
    }
  }
}
