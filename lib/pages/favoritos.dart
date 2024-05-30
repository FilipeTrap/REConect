import 'package:flutter/material.dart';

//import 'favoritos.dart';
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
                  // <<<<===== DESATIVAR O SCROLL: Remover ou comentar o SingleChildScrollView acima e o Expanded ao redor

                  //-------------------------------------------------------------------------
                  // COLE O CONTEUDO DA PAGINA AQUI
                  //-------------------------------------------------------------------------
                ],
              ),
            ),
          ),
          Spacer(), // Adicionando espaçamento antes do menu inferior
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
                      Icons.card_giftcard_sharp,
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
