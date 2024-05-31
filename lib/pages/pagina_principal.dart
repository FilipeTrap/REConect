import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'favoritos.dart';
import 'perfil.dart';
import 'gift_page.dart';
import 'pesquisa.dart';

//import 'pagina_principal.dart';

Future<List<Map<String, dynamic>>> fetchData() async {
  final response = await http.get(
    Uri.parse('https://parseapi.back4app.com/classes/MyCustomClassName'),
    headers: {
      'X-Parse-Application-Id': '94euiG9U0AXzNOTKUgyaruwqlhuw61O66CsLDJqd',
      'X-Parse-REST-API-Key': 'j9yzsK7Y3mhUbikjFLnTa0s5DKmINnrVNoWJxHgV',
    },
  );

  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body)['results'];
    return responseData.cast<Map<String, dynamic>>();
  } else {
    throw Exception('Failed to load data');
  }
}

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  TextEditingController? inputController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    inputController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: Stack(
          children: [
            // Conteúdo rolável
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://png.pngtree.com/png-clipart/20230123/original/pngtree-flat-red-location-sign-png-image_8927579.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Boa Viagem, Recife',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF101213),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFF0072DE),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF0072DE),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 10, 0, 0),
                                child: Text(
                                  '120 Pontos',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                                child: Image.network(
                                  'https://static.vecteezy.com/system/resources/previews/019/046/339/non_2x/gold-coin-money-symbol-icon-png.png',
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Text(
                              'Visite mais lugares para obter mais pontos e ter cupons exclusivos!',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 24,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: LinearProgressIndicator(
                                  value: 0.5,
                                  backgroundColor: Color(0xFFF1F4F8),
                                  color: Color(0xFF4B39EF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PesquisaPage(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          8), // Ajuste o raio do canto, se necessário
                      child: Container(
                        width: 310, // Ajuste a largura do botão
                        height: 65, // Ajuste a altura do botão
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent, // Cor da borda
                            width: 3, // Largura da borda
                          ),
                          borderRadius: BorderRadius.circular(
                              8), // Ajuste o raio do canto, se necessário
                        ),
                        child: Image.asset(
                          'assets/icons/encontreDestino.png', // Caminho da imagem nativa
                          fit: BoxFit
                              .cover, // Ajuste do tipo de encaixe da imagem
                        ),
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                  //   child: TextFormField(
                  //     controller: inputController,
                  //     onChanged: (_) => setState(() {}),
                  //     autofocus: false,
                  //     obscureText: false,
                  //     decoration: InputDecoration(
                  //       hintText: 'Encontre seu destino',
                  //       enabledBorder: UnderlineInputBorder(
                  //         borderSide: BorderSide(
                  //           color: Color(0xFF0072DE),
                  //           width: 3,
                  //         ),
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       focusedBorder: UnderlineInputBorder(
                  //         borderSide: BorderSide(
                  //           color: Color(0xFF0072DE),
                  //           width: 3,
                  //         ),
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       prefixIcon: Icon(Icons.search),
                  //     ),
                  //     style: TextStyle(
                  //       fontFamily: 'Poppins',
                  //       color: Color(0xFF101213),
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 14,
                  //     ),
                  //     textAlign: TextAlign.start,
                  //   ),
                  // ),
                  Align(
                    alignment: AlignmentDirectional(-0.8, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Descubra Lugares',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF101213),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
//---------------------------------------------------------
//
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  defaut = tudo;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF0072DE),
                                minimumSize: Size(130, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Tudo',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  defaut = restaurantes;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF0072DE),
                                minimumSize: Size(130, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Restaurantes',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  defaut = bares;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF0072DE),
                                minimumSize: Size(130, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Bares',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  defaut = hoteis;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF0072DE),
                                minimumSize: Size(130, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Hotéis',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  defaut = boates;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF0072DE),
                                minimumSize: Size(130, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Boates',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Align(
                    alignment: AlignmentDirectional(-0.8, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Populares',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF101213),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  //------------------------------------------------------
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    defaut[1][0], // Imagem
                                    width: 120,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  defaut[0][0], // Nome
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    defaut[1][1], // Imagem
                                    width: 120,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  defaut[0][1], // Nome
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    defaut[1][2], // Imagem
                                    width: 120,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  defaut[0][2], // Nome
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    defaut[1][3], // Imagem
                                    width: 120,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  defaut[0][3], // Nome
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
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
                    alignment: AlignmentDirectional(-0.8, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Text(
                        'Noticias',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF101213),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: FutureBuilder<List<Map<String, dynamic>>>(
                        future: fetchData(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator(); // Exibe um indicador de carregamento enquanto os dados estão sendo buscados
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else {
                            final data = snapshot.data!;
                            return Row(
                              children: data.map((item) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: InkWell(
                                          onTap: () {
                                            // Abrir o link ao clicar na imagem
                                            // O link pode ser acessado em item['link']
                                          },
                                          child: Image.network(
                                            item['img'],
                                            width: 120,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 5,
                                        left: 5,
                                        child: Text(
                                          item['Titulo'],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
            // Barra de aplicativos fixa na parte inferior
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
}

List<List<String>> restaurantes = [
  [
    "Leite",
    "Parraxaxá",
    "Bargaço",
    "Moendo Na Laje",
  ],
  [
    "https://media-cdn.tripadvisor.com/media/photo-s/02/9b/30/48/restaurante-leite-fundado.jpg",
    "https://media-cdn.tripadvisor.com/media/photo-s/05/58/e8/1d/parraxaxa.jpg",
    "https://media-cdn.tripadvisor.com/media/photo-s/0f/88/b8/df/photo0jpg.jpg",
    "https://media-cdn.tripadvisor.com/media/photo-o/28/9d/57/b5/lugar-sensacional-com.jpg",
  ],
  [
    "https://www.google.com/maps/place/Restaurante+Leite/@-8.064991,-34.881275,15z/data=!4m6!3m5!1s0x7ab18e7abaaa1cf:0x74f03d2d7cdce39e!8m2!3d-8.064991!4d-34.881275!16s%2Fg%2F1tf60hdt?entry=ttu",
    "https://www.google.com/maps/place/Restaurante+Parraxax%C3%A1+Boa+Viagem/@-8.1279913,-34.9047318,17z/data=!4m14!1m7!3m6!1s0x7ab1f12ed8a5215:0xc286438426ed15c3!2sRestaurante+Parraxax%C3%A1+Boa+Viagem!8m2!3d-8.1279966!4d-34.9021569!16s%2Fg%2F1tgx6tmn!3m5!1s0x7ab1f12ed8a5215:0xc286438426ed15c3!8m2!3d-8.1279966!4d-34.9021569!16s%2Fg%2F1tgx6tmn?entry=ttu",
    "https://www.google.com/maps/place/Barga%C3%A7o/@-8.0845243,-34.8881865,15z/data=!4m6!3m5!1s0x7ab1f404c4b940d:0x243dbc9ded755a9b!8m2!3d-8.0845243!4d-34.8881865!16s%2Fg%2F1ts_6tqh?entry=ttu",
    "https://www.google.com/maps/place/Moendo+na+Laje/@-8.0588336,-34.8708015,17.75z/data=!4m14!1m7!3m6!1s0x7ab19811df84147:0xcd8b4892c60c921!2sMoendo+na+Laje!8m2!3d-8.0588921!4d-34.8700038!16s%2Fg%2F11sf2sm80x!3m5!1s0x7ab19811df84147:0xcd8b4892c60c921!8m2!3d-8.0588921!4d-34.8700038!16s%2Fg%2F11sf2sm80x?entry=ttu"
  ]
];

List<List<String>> bares = [
  ["Bar Central", "Downtown Pub", "Burburinho Recifebar", "San Botequim"],
  [
    "https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2024/01/bar-central-foto-andrea-rego-barros-aregobarrosfoto-5.jpg",
    "https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2018/05/03/750801/20180503185622573189e.jpg",
    "https://media-cdn.tripadvisor.com/media/photo-s/07/40/85/61/burburinho.jpg",
    "https://10619-2.s.cdn12.com/rests/original/106_530378372.jpg"
  ],
  [
    "https://www.google.com/maps/place/Bar+Central/@-8.0578665,-34.8825144,17z/data=!4m14!1m7!3m6!1s0x7ab18be1672a847:0x786b9f98f25860fc!2sBar+Central!8m2!3d-8.0578718!4d-34.8799395!16s%2Fg%2F1v1vdd6m!3m5!1s0x7ab18be1672a847:0x786b9f98f25860fc!8m2!3d-8.0578718!4d-34.8799395!16s%2Fg%2F1v1vdd6m?entry=ttu",
    "https://www.google.com/maps/place/Downtown+Pub+ZN/@-8.0414707,-34.893785,18.5z/data=!4m10!1m2!2m1!1sDowntown+Pub!3m6!1s0x7ab192e0a782a7d:0xa7902ad0e7783fa6!8m2!3d-8.0409745!4d-34.8932654!15sCgxEb3dudG93biBQdWJaDiIMZG93bnRvd24gcHVikgEKbmlnaHRfY2x1YuABAA!16s%2Fg%2F11khzvgwh1?entry=ttu",
    "https://www.google.com/maps/place/Burburinho+Recifebar/@-8.0637632,-34.8737641,18.5z/data=!4m14!1m7!3m6!1s0x7ab18a4d380d96b:0x17fc390e6c59952!2sBurburinho+Recifebar!8m2!3d-8.0640438!4d-34.8731467!16s%2Fg%2F12hnnq7lx!3m5!1s0x7ab18a4d380d96b:0x17fc390e6c59952!8m2!3d-8.0640438!4d-34.8731467!16s%2Fg%2F12hnnq7lx?entry=ttu",
    "https://www.google.com/maps/place/San+Botequim+San+Martin/@-8.0679402,-34.9372307,15.96z/data=!4m10!1m2!2m1!1sSan+Botequim!3m6!1s0x7ab194a9d0b7c87:0xe5fcfb8bf387bc70!8m2!3d-8.069263!4d-34.9279692!15sCgxTYW4gQm90ZXF1aW1aDiIMc2FuIGJvdGVxdWltkgEObGl2ZV9tdXNpY19iYXLgAQA!16s%2Fg%2F11c57rtk83?entry=ttu"
  ]
];

List<List<String>> hoteis = [
  [
    "Hotel Atlante Plaza",
    "Mar Hotel Conventions",
    "Radisson Recife",
    "Recife Plaza Hotel"
  ],
  [
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/27/a5/99/vista-do-hotel.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/e4/90/01/hotel.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/c8/58/6b/exterior.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/6f/88/df/recife-plaza-hotel.jpg"
  ],
  [
    "https://www.google.com.br/maps/place/Hotel+Atlante+Plaza/@-8.1363574,-34.9069435,17z/data=!4m10!3m9!1s0x7ab1fcdc520f683:0x15d162afb789dc8f!5m3!1s2024-06-09!4m1!1i2!8m2!3d-8.1363627!4d-34.9020726!16s%2Fg%2F1yg4m0zg1?entry=ttu",
    "https://www.google.com.br/maps/place/Mar+Hotel+Conventions/@-8.1319472,-34.9069575,17z/data=!4m10!3m9!1s0x7ab1fcb08ad1401:0xd24bd3d576e3012a!5m3!1s2024-06-09!4m1!1i2!8m2!3d-8.1319525!4d-34.9043826!16s%2Fg%2F1v3_2x67?entry=ttu",
    "https://www.google.com.br/maps/place/Radisson+Hotel+Recife/@-8.110668,-34.8991473,14.25z/data=!4m10!3m9!1s0x7ab1fcc2ed1e6db:0xfa6bef69fe94cd4!5m3!1s2024-06-09!4m1!1i2!8m2!3d-8.1075235!4d-34.8885486!16s%2Fg%2F1tfgdfvp?entry=ttu",
    "https://www.google.com.br/maps/place/Recife+Plaza+Hotel/@-8.0617647,-34.8842325,17z/data=!4m10!3m9!1s0x7ab18b8d65cd08f:0xd70d246fed53c50e!5m3!1s2024-06-09!4m1!1i2!8m2!3d-8.06177!4d-34.8816576!16s%2Fg%2F1xg5swr8?entry=ttu"
  ]
];

List<List<String>> boates = [
  ["Clube Metrópole", "Sala de Reboco", "Mkb", "Sampa Night Club"],
  [
    "https://imagens.ne10.uol.com.br/veiculos/_midias/jpg/2022/04/28/806x444/1_metropole1-20930295.jpg",
    "https://s2-g1.glbimg.com/2czuTqULGp6ByTX2vHobum4oWas=/0x0:3008x2000/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/3/x/fMzknPSpAogNVK005l4w/sala-de-reboco-tem-programacao-de-pe-de-serra.jpg",
    "https://img.restaurantguru.com/r947-Mkb-Meu-Kaso-Bar-exterior.jpg",
    "https://s2.glbimg.com/PghJI2jkmah2Th29orurPR5JkIE=/s.glbimg.com/jo/g1/f/original/2014/11/12/sampa.jpg"
  ],
  [
    "https://www.google.com/maps/place/Clube+Metr%C3%B3pole/@-8.0595665,-34.8939892,17z/data=!3m1!4b1!4m6!3m5!1s0x7ab18c395276a25:0xe8eb93b5358ebbcc!8m2!3d-8.0595718!4d-34.8914143!16s%2Fg%2F1tcwwyd1?entry=ttu",
    "https://www.google.com/maps/place/Sala+de+Reboco/@-8.0539682,-34.9216458,16z/data=!4m14!1m7!3m6!1s0x7ab193d76465a29:0xcbb38cbe75f55ee5!2sSala+de+Reboco!8m2!3d-8.0536651!4d-34.9201748!16s%2Fg%2F1tdp57m4!3m5!1s0x7ab193d76465a29:0xcbb38cbe75f55ee5!8m2!3d-8.0536651!4d-34.9201748!16s%2Fg%2F1tdp57m4?entry=ttu",
    "https://www.google.com/maps/place/MKB+Meu+Kaso+Bar/@-8.0578633,-34.8908184,17z/data=!4m10!1m2!2m1!1smkb+boate!3m6!1s0x7ab18c0f220304f:0x86e676b66c0f5b84!8m2!3d-8.0578219!4d-34.8867903!15sCglta2IgYm9hdGVaCyIJbWtiIGJvYXRlkgEFZGlzY2_gAQA!16s%2Fg%2F1tjdlz0t?entry=ttu",
    "https://www.google.com/maps/place/Sampa+Night+Club/@-8.120693,-34.897093,15z/data=!4m6!3m5!1s0x7ab1fb015a40885:0x78f01d2ceeb9f706!8m2!3d-8.120693!4d-34.897093!16s%2Fg%2F1vp6_czl?entry=ttu"
  ]
];

List<List<String>> tudo = [
  ["Burburinho Recifebar", "Leite", "Hotel Atlante Plaza", "Clube Metrópole"],
  [
    "https://media-cdn.tripadvisor.com/media/photo-s/07/40/85/61/burburinho.jpg",
    "https://media-cdn.tripadvisor.com/media/photo-s/02/9b/30/48/restaurante-leite-fundado.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/27/a5/99/vista-do-hotel.jpg",
    "https://imagens.ne10.uol.com.br/veiculos/_midias/jpg/2022/04/28/806x444/1_metropole1-20930295.jpg"
  ],
  [
    "https://www.google.com/maps/place/Burburinho+Recifebar/@-8.0637632,-34.8737641,18.5z/data=!4m14!1m7!3m6!1s0x7ab18a4d380d96b:0x17fc390e6c59952!2sBurburinho+Recifebar!8m2!3d-8.0640438!4d-34.8731467!16s%2Fg%2F12hnnq7lx!3m5!1s0x7ab18a4d380d96b:0x17fc390e6c59952!8m2!3d-8.0640438!4d-34.8731467!16s%2Fg%2F12hnnq7lx?entry=ttu",
    "https://www.google.com/maps/place/Restaurante+Leite/@-8.064991,-34.881275,15z/data=!4m6!3m5!1s0x7ab18e7abaaa1cf:0x74f03d2d7cdce39e!8m2!3d-8.064991!4d-34.881275!16s%2Fg%2F1tf60hdt?entry=ttu",
    "https://www.google.com.br/maps/place/Hotel+Atlante+Plaza/@-8.1363574,-34.9069435,17z/data=!4m10!3m9!1s0x7ab1fcdc520f683:0x15d162afb789dc8f!5m3!1s2024-06-09!4m1!1i2!8m2!3d-8.1363627!4d-34.9020726!16s%2Fg%2F1yg4m0zg1?entry=ttu",
    "https://www.google.com/maps/place/Clube+Metr%C3%B3pole/@-8.0595665,-34.8939892,17z/data=!3m1!4b1!4m6!3m5!1s0x7ab18c395276a25:0xe8eb93b5358ebbcc!8m2!3d-8.0595718!4d-34.8914143!16s%2Fg%2F1tcwwyd1?entry=ttu"
  ]
];

List<List<String>> defaut = [
  ["Burburinho Recifebar", "Leite", "Hotel Atlante Plaza", "Clube Metrópole"],
  [
    "https://media-cdn.tripadvisor.com/media/photo-s/07/40/85/61/burburinho.jpg",
    "https://media-cdn.tripadvisor.com/media/photo-s/02/9b/30/48/restaurante-leite-fundado.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/27/a5/99/vista-do-hotel.jpg",
    "https://imagens.ne10.uol.com.br/veiculos/_midias/jpg/2022/04/28/806x444/1_metropole1-20930295.jpg"
  ],
  [
    "https://www.google.com/maps/place/Burburinho+Recifebar/@-8.0637632,-34.8737641,18.5z/data=!4m14!1m7!3m6!1s0x7ab18a4d380d96b:0x17fc390e6c59952!2sBurburinho+Recifebar!8m2!3d-8.0640438!4d-34.8731467!16s%2Fg%2F12hnnq7lx!3m5!1s0x7ab18a4d380d96b:0x17fc390e6c59952!8m2!3d-8.0640438!4d-34.8731467!16s%2Fg%2F12hnnq7lx?entry=ttu",
    "https://www.google.com/maps/place/Restaurante+Leite/@-8.064991,-34.881275,15z/data=!4m6!3m5!1s0x7ab18e7abaaa1cf:0x74f03d2d7cdce39e!8m2!3d-8.064991!4d-34.881275!16s%2Fg%2F1tf60hdt?entry=ttu",
    "https://www.google.com.br/maps/place/Hotel+Atlante+Plaza/@-8.1363574,-34.9069435,17z/data=!4m10!3m9!1s0x7ab1fcdc520f683:0x15d162afb789dc8f!5m3!1s2024-06-09!4m1!1i2!8m2!3d-8.1363627!4d-34.9020726!16s%2Fg%2F1yg4m0zg1?entry=ttu",
    "https://www.google.com/maps/place/Clube+Metr%C3%B3pole/@-8.0595665,-34.8939892,17z/data=!3m1!4b1!4m6!3m5!1s0x7ab18c395276a25:0xe8eb93b5358ebbcc!8m2!3d-8.0595718!4d-34.8914143!16s%2Fg%2F1tcwwyd1?entry=ttu"
  ]
];

void atualizarDados(BuildContext context, List<List<String>> novaMatriz) {
  print("botão pressionado");
  final _state = context.findAncestorStateOfType<_PaginaPrincipalState>();
  if (_state != null) {
    _state.setState(() {
      nomeImagens = novaMatriz[0];
      linksImagens = novaMatriz[1];
      linksGoogleMaps = novaMatriz[2];
    });
  }
}

List<String> nomeImagens = [];
List<String> linksImagens = [];
List<String> linksGoogleMaps = [];
