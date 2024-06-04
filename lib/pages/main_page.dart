import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'session_manager.dart'; // Importar a SessionManager
import 'pagina_principal.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<bool> isButtonPressed = List.filled(6, false);

  void _logout() {
    FirebaseAuth.instance.signOut().then((result) {
      Navigator.of(context).pushNamedAndRemoveUntil("/login", (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   title: Text("Main"),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.logout),
      //       onPressed: _logout,
      //       tooltip: "Logout",
      //     )
      //   ],
      // ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  onPressed: () {
                    _logout(); // Chame a função _logout aqui
                  },
                ),
              ),
            ),
            Text(
              'Antes de começar, gostariamos de \nsaber um pouco sobre os seus interesses!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10), // Espaçamento entre os elementos
            Text(
              'Escolha seus interesses a baixo',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildImageButton(0, 'https://i.imgur.com/dszTgQ7.png'),
                        _buildImageButton(1, 'https://i.imgur.com/UTcfybT.png'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildImageButton(2, 'https://i.imgur.com/fQnPg5n.png'),
                        _buildImageButton(3, 'https://i.imgur.com/dszTgQ7.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 15),
                SizedBox(
                  width: 350,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaginaPrincipal()),
                      );
                      // // Imprime o token ao pressionar o botão "Avançar"
                      // String? token = SessionManager().sessionToken;
                      // print('Token: $token');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0072DE),
                      onPrimary: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Avançar',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5), // Espaço entre os botões
                SizedBox(
                  width: 350,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaginaPrincipal()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Color(0xFF0072DE),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Pular ➔',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF0072DE),
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageButton(int index, String imageUrl) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isButtonPressed[index] = !isButtonPressed[index];
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: isButtonPressed[index] ? Colors.blue : Colors.transparent,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
