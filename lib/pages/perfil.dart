import 'package:flutter/material.dart';
import 'favoritos.dart';
import 'pagina_principal.dart';
import 'gift_page.dart';
import 'pesquisa.dart';
import 'session_manager.dart';
import 'editar_perfil.dart';
import 'configuracao_page.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final sessionManager = SessionManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'User: ${sessionManager.username}',
                      style: TextStyle(
                        color: Color(0xFF101213),
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email: ${sessionManager.email}',
                      style: TextStyle(
                        color: Color(0xFF101213),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            spreadRadius: 0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Pontos',
                                style: TextStyle(
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '120',
                                style: TextStyle(
                                  color: Color(0xFF0072DE),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 2,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFF7D848D),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Visitou',
                                style: TextStyle(
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '473',
                                style: TextStyle(
                                  color: Color(0xFF0072DE),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // Seções adicionais da página
                    Container(
                      width: 300,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black,
                            spreadRadius: 0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  'Editar Perfil',
                                  style: TextStyle(
                                    color: Color(0xFF101213),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            EditarPerfilPage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Color(0xFF7D848D),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.settings_sharp,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  'Configurações',
                                  style: TextStyle(
                                    color: Color(0xFF101213),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ConfiguracaoPage()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Color(0xFF7D848D),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.public,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text(
                                  'Versão',
                                  style: TextStyle(
                                    color: Color(0xFF101213),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    _showVersionDialog(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
      ),
    );
  }

  void _showVersionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Versão do App'),
          content: SingleChildScrollView(
            child: Text(
              'Estamos na versão ALFA 0.1\n'
              'App Development: Filipe Gomes\n'
              'Design: Yasmin Lopes, Eduardo Jorge e Liana Vitoria\n'
              'Documentação: Yasmin Lopes e Eduardo Jorge \n'
              'Apoio: Isabela Araujo\n',
              textAlign: TextAlign.left,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
