import 'package:flutter/material.dart';
import 'perfil.dart';
import 'gift_page.dart';
import 'pagina_principal.dart';

class FavoritosPage extends StatefulWidget {
  @override
  _FavoritosPageState createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Você precisa estar no local para fazer o check-in e adicionar aos favoritos.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF101213),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  //-------------------------------------------------------------------------
                  // COLE O CONTEUDO DA PAGINA AQUI
                  //-------------------------------------------------------------------------
                ],
              ),
            ),
          ),
          // Removido Spacer(), pois ele não é necessário neste caso
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaginaPrincipal()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.directions,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GiftPage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritosPage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PerfilPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
