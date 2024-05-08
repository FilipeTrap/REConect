import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DateTime? _startDate;
  DateTime? _endDate;
  int? _daysDifference;

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return Container(
        child: Text("User not found"),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
            tooltip: "Logout",
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bem vindo ${user.email}"),
            SizedBox(height: 20),
            Text("Data Inicial"),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => _selectDate(true),
              // style: ElevatedButton.styleFrom(
              //   primary:
              //       Color(0xff3ef2f2), // Defina a cor de fundo do botão aqui
              // ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff3ef2f2),
              ),

              child: Text(
                _startDate == null
                    ? 'Selecione uma data'
                    : 'Data selecionada: ${_formatDate(_startDate!)}',
              ),
            ),
            SizedBox(height: 20),
            Text("Data Final"),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => _selectDate(false),
              // style: ElevatedButton.styleFrom(
              //   primary:
              //       Color(0xff3ef2f2), // Defina a cor de fundo do botão aqui
              // ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff3ef2f2),
              ),
              child: Text(
                _endDate == null
                    ? 'Selecione uma data'
                    : 'Data selecionada: ${_formatDate(_endDate!)}',
              ),
            ),
            SizedBox(height: 20),
            Text("Quantidade de dias: $_daysDifference"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateDifference,
              child: Text("Calcular"),
              // style: ElevatedButton.styleFrom(
              //   primary:
              //       Color(0xff3ef2f2), // Defina a cor de fundo do botão aqui
              // ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff3ef2f2),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }

  _selectDate(bool isStartDate) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: isStartDate
          ? _startDate ?? DateTime.now()
          : _endDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        if (isStartDate) {
          _startDate = pickedDate;
        } else {
          _endDate = pickedDate;
        }
      });
    }
  }

  _calculateDifference() {
    if (_startDate != null && _endDate != null) {
      final difference = _endDate!.difference(_startDate!).inDays;
      setState(() {
        _daysDifference = difference;
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Erro"),
            content: Text("Por favor, selecione ambas as datas."),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  _logout() {
    FirebaseAuth.instance.signOut().then((result) {
      Navigator.of(context).pushNamedAndRemoveUntil("/login", (_) => false);
    });
  }
}
