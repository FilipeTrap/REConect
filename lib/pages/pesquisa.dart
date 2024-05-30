import 'package:flutter/material.dart';
import 'favoritos.dart';
import 'gift_page.dart';
import 'pagina_principal.dart';
import 'Zlocal_leite.dart';

class PesquisaPage extends StatefulWidget {
  @override
  _PesquisaPageState createState() => _PesquisaPageState();
}

class _PesquisaPageState extends State<PesquisaPage> {
  TextEditingController inputController = TextEditingController();

  final List<List<String>> tudo = [
    // Nomes
    [
      "Leite",
      "Parraxaxá",
      "Restaurante Bargaço",
      "Moendo Na Laje",
      "Bar Central",
      "Downtown Pub",
      "Burburinho Recifebar",
      "San Botequim",
      "Hotel Atlante Plaza",
      "Mar Hotel Conventions",
      "Radisson Recife",
      "Recife Plaza Hotel",
      "Clube Metrópole",
      "Sala de Reboco",
      "Mkb",
      "Sampa Night Club"
    ],
    // URLs das Imagens
    [
      "https://media-cdn.tripadvisor.com/media/photo-s/02/9b/30/48/restaurante-leite-fundado.jpg",
      "https://media-cdn.tripadvisor.com/media/photo-s/05/58/e8/1d/parraxaxa.jpg",
      "https://media-cdn.tripadvisor.com/media/photo-s/0f/88/b8/df/photo0jpg.jpg",
      "https://media-cdn.tripadvisor.com/media/photo-o/28/9d/57/b5/lugar-sensacional-com.jpg",
      "https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2024/01/bar-central-foto-andrea-rego-barros-aregobarrosfoto-5.jpg",
      "https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2018/05/03/750801/20180503185622573189e.jpg",
      "https://media-cdn.tripadvisor.com/media/photo-s/07/40/85/61/burburinho.jpg",
      "https://10619-2.s.cdn12.com/rests/original/106_530378372.jpg",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/27/a5/99/vista-do-hotel.jpg",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/e4/90/01/hotel.jpg",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/c8/58/6b/exterior.jpg",
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/6f/88/df/recife-plaza-hotel.jpg",
      "https://imagens.ne10.uol.com.br/veiculos/_midias/jpg/2022/04/28/806x444/1_metropole1-20930295.jpg",
      "https://s2-g1.glbimg.com/2czuTqULGp6ByTX2vHobum4oWas=/0x0:3008x2000/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/3/x/fMzknPSpAogNVK005l4w/sala-de-reboco-tem-programacao-de-pe-de-serra.jpg",
      "https://img.restaurantguru.com/r947-Mkb-Meu-Kaso-Bar-exterior.jpg",
      "https://s2.glbimg.com/PghJI2jkmah2Th29orurPR5JkIE=/s.glbimg.com/jo/g1/f/original/2014/11/12/sampa.jpg"
    ],
    // Nomes das Páginas
    [
      "LeitePage",
      "ParraxaxaPage",
      "BargacoPage",
      "MoendoNaLajePage",
      "BarCentralPage",
      "DowntownPubPage",
      "BurburinhoRecifebarPage",
      "SanBotequimPage",
      "HotelAtlantePlazaPage",
      "MarHotelConventionsPage",
      "RadissonRecifePage",
      "RecifePlazaHotelPage",
      "ClubeMetropolePage",
      "SalaDeRebocoPage",
      "MkbPage",
      "SampaNightClubPage"
    ]
  ];

  void navigateToPage(String pageName) {
    Widget page = DefaultPage(); // Inicializa com um valor padrão
    switch (pageName) {
      case "LeitePage":
        page = LeitePage();
        break;
      case "ParraxaxaPage":
        page = ParraxaxaPage();
        break;
      case "BargacoPage":
        page = BargacoPage();
        break;
      case "MoendoNaLajePage":
        page = MoendoNaLajePage();
        break;
      case "BarCentralPage":
        page = BarCentralPage();
        break;
      case "DowntownPubPage":
        page = DowntownPubPage();
        break;
      case "BurburinhoRecifebarPage":
        page = BurburinhoRecifebarPage();
        break;
      case "SanBotequimPage":
        page = SanBotequimPage();
        break;
      case "HotelAtlantePlazaPage":
        page = HotelAtlantePlazaPage();
        break;
      case "MarHotelConventionsPage":
        page = MarHotelConventionsPage();
        break;
      case "RadissonRecifePage":
        page = RadissonRecifePage();
        break;
      case "RecifePlazaHotelPage":
        page = RecifePlazaHotelPage();
        break;
      case "ClubeMetropolePage":
        page = ClubeMetropolePage();
        break;
      case "SalaDeRebocoPage":
        page = SalaDeRebocoPage();
        break;
      case "MkbPage":
        page = MkbPage();
        break;
      case "SampaNightClubPage":
        page = SampaNightClubPage();
        break;
      default:
        page = DefaultPage();
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesquisa'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
            child: TextFormField(
              controller: inputController,
              onChanged: (_) => setState(() {}),
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Encontre seu destino',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF0072DE),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF0072DE),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search),
              ),
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF101213),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20), // Espaço entre o campo de pesquisa e as imagens
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < tudo[0].length; i += 2)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildClickableImage(
                              tudo[0][i], tudo[1][i], tudo[2][i]),
                          if (i + 1 < tudo[0].length)
                            _buildClickableImage(
                                tudo[0][i + 1], tudo[1][i + 1], tudo[2][i + 1]),
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
                        MaterialPageRoute(builder: (context) => PesquisaPage()),
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

  Widget _buildClickableImage(String name, String imageUrl, String pageName) {
    return GestureDetector(
      onTap: () {
        navigateToPage(pageName);
      },
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 100, // Ajuste a largura da imagem conforme necessário
            height: 100, // Ajuste a altura da imagem conforme necessário
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            },
          ),
          SizedBox(height: 5), // Espaço entre a imagem e o texto
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class DefaultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Padrão'),
      ),
      body: Center(
        child: Text('Página não encontrada.'),
      ),
    );
  }
}

class LeitePage extends StatelessWidget {
  const LeitePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://pe.unit.br/wp-content/uploads/2023/09/restaurante-leite.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Restaurante Leite',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Santo Antonio',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2024/01/leite1.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.joaoalberto.com/wp-content/uploads/2019/04/25/leite-sala-do-restaurante-f7adb.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.joaoalberto.com/wp-content/uploads/2012/09/28/restaurante-leite.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/02/60/a2/dd/classico-com-adega-maravilhosa.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://visit.recife.br/wp-content/uploads/2017/11/onde-comer-leite-02.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Restaurante Leite é o mais antigo em funcionamento no Brasil, localizado em Recife, Pernambuco. Fundado em 1882, é um ícone da culinária pernambucana.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BurburinhoPage extends StatelessWidget {
  const BurburinhoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://media-cdn.tripadvisor.com/media/photo-s/07/40/85/61/burburinho.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Burburinho Recifebar',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Recife Antigo',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.joaoalberto.com/wp-content/uploads/2014/10/23/Bar-Burburinho.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://fastly.4sqi.net/img/general/600x600/19910658_L9C3dSvcApiCjv-jXqsVQj6gsTV6Ue9ASIcL_Yah7_Q.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/07/a0/31/6e/ainda-calmo-19h-cerveja.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://images.myguide-cdn.com/recife/companies/bar-burburinho/large/bar-burburinho-286843.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://img.restaurantguru.com/r6b9-Burburinho-Recifebar-photo-2021-09-902082.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Burburinho é um bar famoso no Recife Antigo, Pernambuco. Próximo ao Marco Zero, é um ponto de encontro popular para moradores e turistas. Com música ao vivo e petiscos deliciosos, oferece uma atmosfera acolhedora para aproveitar a noite.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ParraxaxaPage extends StatelessWidget {
  const ParraxaxaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://media-cdn.tripadvisor.com/media/photo-s/05/58/e8/1d/parraxaxa.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Restaurante Parraxaxá',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Viagem / Casa Forte',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/05/70/b5/c0/parraxaxa.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://rota1976.com/wp-content/uploads/2018/11/IMG_7111.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.joaoalberto.com/wp-content/uploads/2021/02/10/3e5868fe-511c-49ce-9f12-b31c2953c2ee-1024x767.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/1c/67/f5/29/parraxaxa-casa-forte.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://rota1976.com/wp-content/uploads/2018/11/IMG_7126.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Restaurante Parraxaxá em Recife, encanta com sua decoração nordestina e pratos típicos regionais. É o lugar perfeito para saborear a culinária pernambucana em um ambiente acolhedor.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BargacoPage extends StatelessWidget {
  const BargacoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://media-cdn.tripadvisor.com/media/photo-s/0f/88/b8/df/photo0jpg.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Restaurante Bargaço',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Pina',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/0f/88/b8/df/photo0jpg.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://iili.io/J28jMTG.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/05/63/63/1d/bargaco.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/0b/0b/c0/66/bargaco-recife-pe-prato.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/0d/b0/5a/46/peixe-inteiro.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Restaurante Bargaço, fundado em 1971 em Salvador, Bahia, é renomado por sua culinária baiana autêntica. Especializado em frutos do mar, oferece pratos como moqueca e camarão na moranga. ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MoendoNaLajePage extends StatelessWidget {
  const MoendoNaLajePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://images.squarespace-cdn.com/content/v1/51ef2bf2e4b02bcf8471333b/017d3b02-441a-4be9-9323-d7173918d853/moendo-na-laje.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Moendo Na Laje',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Recife Antigo',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://cdn.folhape.com.br/img/c/1200/900/dn_arquivo/2022/10/copia-de-priscila-enquadramento-capa-10_1.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://cdn.folhape.com.br/img/c/1200/900/dn_arquivo/2022/10/whatsapp-image-2022-10-20-at-111632-am-2.jpeg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://cdn.folhape.com.br/img/c/1200/900/dn_arquivo/2022/10/whatsapp-image-2022-10-20-at-111633-am-1.jpeg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2023/01/whatsapp-image-2023-01-27-at-164551.jpeg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://visit.recife.br/wp-content/uploads/2020/07/cais-destaque-1-1.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'Moendo Na Laje é um restaurante conhecido por sua cozinha regional e ambiente descontraído. Localizado em uma charmosa laje urbana, oferece pratos típicos com um toque moderno.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BarCentralPage extends StatelessWidget {
  const BarCentralPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2024/01/bar-central-foto-andrea-rego-barros-aregobarrosfoto-5.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Bar Central',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Santo Amaro',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://visit.recife.br/wp-content/uploads/2017/11/onde-comer-bar-central-01.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://visit.recife.br/wp-content/uploads/2017/11/onde-comer-bar-central-03.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.baressp.com.br/bares/fotos/barcentral7tratada.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/08/4d/bd/80/central.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.joaoalberto.com/wp-content/uploads/2019/05/30/Gole__Gula_Bar_Central_Recife_PE_03.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Bar Central em Santo Amaro é um ponto tradicional da região, famoso por seu ambiente acolhedor e cardápio variado. Especializado em petiscos clássicos, como coxinha e pastel.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DowntownPubPage extends StatelessWidget {
  const DowntownPubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://images.sympla.com.br/6474cf7ce8d24.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Downtown Pub',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Espinheiro',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/01/f1/f2/b5/caption.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2018/06/21/755535/20180621150624837201e.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://imagens.ne10.uol.com.br/legado/blogsne10/social1/uploads/2018/05/downtown.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.guiadasemana.com.br/contentFiles/system/pictures/2013/6/79104/cropped/downtown-pub-recife-guia.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2018/05/03/750801/20180503185622573189e.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Downtown Pub é um bar vibrante conhecido por suas noites animadas e atmosfera acolhedora. Localizado no coração da cidade, o pub oferece uma vasta seleção de cervejas artesanais e coquetéis. ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BurburinhoRecifebarPage extends StatelessWidget {
  const BurburinhoRecifebarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2015/05/25/578094/20150525102031978828a.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Burburinho Recifebar',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Recife Antigo',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/07/e2/66/11/lugar-legal-musica-boa.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/07/40/85/61/burburinho.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.viajali.com.br/wp-content/uploads/2018/09/bares-em-recife-025-775x477.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.viajali.com.br/wp-content/uploads/2018/09/bares-em-recife-014-775x477.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/10/70/0b/5c/photo0jpg.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Burburinho Recifebar é um ponto de encontro popular em Recife, famoso por seu ambiente animado e programação cultural variada. Situado no centro da cidade, oferece uma experiência única.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SanBotequimPage extends StatelessWidget {
  const SanBotequimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://agendadorecife.com.br/wp-content/uploads/2022/09/San-Botequim-.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'San Botequim',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'San Martin',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://img.restaurantguru.com/c942-San-Botequim-Boa-Viagem-Recife-drink.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://fastly.4sqi.net/img/general/600x600/28020137_CKg54NGUtVB-1OdGJrfvEGNITJtdW-FNToLnmS0olj0.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://agendadorecife.com.br/wp-content/uploads/2022/09/San-Botequim-1-1.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://img.restaurantguru.com/rbac-facade-San-Botequim-Boa-Viagem.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://img.restaurantguru.com/rbf5-exterior-San-Botequim-Boa-Viagem.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'San Botequim é um bar acolhedor e popular, conhecido pela atmosfera amigável. Oferece petiscos deliciosos, cervejas artesanais e coquetéis clássicos. Com música ao vivo e eventos temáticos, é perfeito para uma noite agradável.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HotelAtlantePlazaPage extends StatelessWidget {
  const HotelAtlantePlazaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://i.ytimg.com/vi/439oulwWxpw/maxresdefault.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Hotel Atlante Plaza',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Viagem',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.kayak.com.br/rimg/himg/de/96/aa/expediav2-17253-b9d024-829477.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_600,q_auto,w_600//hotelier-images/25/f4/b6c8ebfd4f941ec621f5fc1e5dc5b4225c9c1d46286034367dc03589ef93.jpeg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://images.trvl-media.com/lodging/1000000/450000/443800/443714/c3c85a21.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/291327885.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/07/75/bb/d7/piscina-com-bar-e-aquecida.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Hotel Atlante Plaza, à beira-mar na Praia de Boa Viagem, em Recife, oferece uma estadia luxuosa com acomodações confortáveis, uma piscina incrível e um restaurante sofisticado.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MarHotelConventionsPage extends StatelessWidget {
  const MarHotelConventionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://images.trvl-media.com/lodging/12000000/11480000/11470100/11470001/8235d5c3.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Mar Hotel Conventions',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Viagem',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/06/8f/60/7c/mar-hotel-recife.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.momondo.com.br/himg/8b/d4/75/ice-87080-63950954_3XL-618468.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.letsbookhotel.com/img/max300/108/1083447.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://i.ytimg.com/vi/WoyQk6FraUI/hqdefault.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_600,q_auto,w_600//hotelier-images/fb/d5/4e433696bb2ae8ba063e16f7ff5cf70047bb5824e19bba266dc7d45abf44.jpeg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Mar Hotel Conventions, em Boa Viagem, Recife, é uma escolha ideal para quem busca conforto e praticidade. Com quartos bem equipados e áreas de lazer, proporciona uma estadia agradável próxima à praia e a pontos turísticos.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RadissonRecifePage extends StatelessWidget {
  const RadissonRecifePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://radisson.recifetophotels.com/data/Images/1920x1080w/8259/825937/825937472/image-recife-radisson-hotel-1.JPEG',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Radisson Hotel Recife',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Viagem',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://static.pmweb.com.br/nH8h85CQglHEVhNdX_RewYu4u-k=/https://letsimage.s3.sa-east-1.amazonaws.com/editor/atlantica/pt/hotel/radisson-recife/1631277341806-lobby.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492800/image-recife-radisson-hotel-4.JPEG',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492485/image-recife-radisson-hotel-5.JPEG',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492593/image-recife-radisson-hotel-2.JPEG',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492155/image-recife-radisson-hotel-7.JPEG',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Radisson Hotel Recife, localizado em Boa Viagem, é uma opção luxuosa para os visitantes da cidade. Com quartos elegantes, instalações modernas e vista para o mar, oferece uma experiência de hospedagem única e confortável.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecifePlazaHotelPage extends StatelessWidget {
  const RecifePlazaHotelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://visit.recife.br/wp-content/uploads/2020/08/recife-plaza-destaque-3-1.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Recife Plaza Hotel',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Vista',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://visit.recife.br/wp-content/uploads/2020/08/recife-plaza-destaque-2-1.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://visit.recife.br/wp-content/uploads/2020/08/recife-plaza-destaque-1-1.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://recife-plaza-hotel.hotelempernambuco.com/data/Images/1920x1080w/12386/1238664/1238664751/image-recife-recife-plaza-hotel-50050-000-12.JPEG',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://recife-plaza-hotel.hotelempernambuco.com/data/Images/1920x1080w/12394/1239464/1239464743/image-recife-recife-plaza-hotel-50050-000-15.JPEG',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://recife-plaza-hotel.hotelempernambuco.com/data/Images/1920x1080w/12394/1239470/1239470356/image-recife-recife-plaza-hotel-50050-000-16.JPEG',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'A página do Recife Plaza Hotel oferece uma visão completa do hotel, com detalhes sobre suas instalações e comodidades de alta qualidade. Descubra mais e faça sua reserva para uma estadia excepcional em Recife.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClubeMetropolePage extends StatelessWidget {
  const ClubeMetropolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2023/01/325802337-563022578788160-7182077978201316185-n.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Clube Metropole',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Vista',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://images.sympla.com.br/6239b1e16d776.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://i0.wp.com/diversidade.blogsdagazetaweb.com/wp-content/uploads/sites/9/2022/04/IMG-20220429-WA0248.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://i0.wp.com/diversidade.blogsdagazetaweb.com/wp-content/uploads/sites/9/2023/06/2577FA98-680B-4956-92B4-8B7D60FD201A.jpeg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://instaload.net/pt/wp-content/uploads/2023/01/club-metropole-6.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://instaload.net/pt/wp-content/uploads/2023/01/club-metropole-7.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Clube Metrópole é um ícone da vida noturna em Recife, conhecido por suas festas vibrantes e diversificadas. Com múltiplos ambientes e uma atmosfera acolhedora.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalaDeRebocoPage extends StatelessWidget {
  const SalaDeRebocoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://s2-g1.glbimg.com/2czuTqULGp6ByTX2vHobum4oWas=/0x0:3008x2000/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/3/x/fMzknPSpAogNVK005l4w/sala-de-reboco-tem-programacao-de-pe-de-serra.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Sala De Reboco',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Cordeiro',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www2.recife.pe.gov.br/wp-content/uploads/0622-SALA-DE-REBOCO-3-CA.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://visit.recife.br/wp-content/uploads/2018/04/o-que-fazer-sala-de-reboco-destaque.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2023/06/19/932340/20230619210905758125i.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-m/1280/18/2b/ff/66/vista-interna.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-w/18/2b/fe/ee/ambiente-interno.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'A Sala de Reboco é um espaço cultural em Recife dedicado à música nordestina e à dança de forró. Com uma atmosfera acolhedora e animada, o local é conhecido por suas festas tradicionais e apresentações ao vivo de artistas locais e regionais.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MkbPage extends StatelessWidget {
  const MkbPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://fastly.4sqi.net/img/general/600x600/74245636_Y8jXiikcpAOqtrAzNJuYnkyX2TCG7Cl7isyUqFVfn7M.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'MKB Meu Kaso Bar',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Vista',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/e9/8b/49/som.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://img.restaurantguru.com/r947-Mkb-Meu-Kaso-Bar-exterior.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://i.ytimg.com/vi/RVKTLXViLcI/hqdefault.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://i.ytimg.com/vi/G6ksAqksSu0/hqdefault.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/af/ef/05/pub-crawl-recife.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'A MKB Boate é um ícone da vida noturna em Recife, oferecendo música eletrônica de alta energia e uma atmosfera animada para os fãs da balada. Com um ambiente moderno e uma pista de dança vibrante, é o lugar perfeito para se divertir e dançar a noite toda.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SampaNightClubPage extends StatelessWidget {
  const SampaNightClubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Detalhes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFF101213),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://pbs.twimg.com/media/B2QfKIXIQAAyLhm.jpg',
                  width: 350,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 20),
                          child: Text(
                            'Sampa Night Club',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xFFDA1E28),
                                size: 24,
                              ),
                              Text(
                                'Boa Viagem',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF57636C),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Color(0xFFFBBC05),
                                size: 24,
                              ),
                              Text(
                                '4.7',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF101213),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://img.restaurantguru.com/r888-Sampa-Night-Club-bar-counter.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://imagesapt.apontador-assets.com/fit-in/640x480/32aac4757a604a1d97cf01d6dd2c3dc6/sampa-night-club-boa-viagem-15433622207013614.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://s2.glbimg.com/AsFoy_47Lu8lt9DR6aKRTWld8_s=/s.glbimg.com/jo/g1/f/original/2014/11/12/under.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://www.jornaldocomercio.com/_midias/jpg/2022/04/26/1980___crocodillo_s___acervo_fabio_reis__5_-9611021.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://cdn.topmidianews.com.br/upload/dn_arquivo/2024/05/boate-da-putaria-2.jpg',
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                          child: Text(
                            'Sobre o Destino',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF101213),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Text(
                        'O Sampa Night Club é um destino popular para quem busca diversão noturna em São Paulo. Com uma atmosfera vibrante e uma variedade de eventos ao vivo, é o lugar ideal para dançar e socializar.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF57636C),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Você precisa estar no local para fazer o check in'),
                    ),
                  );
                },
                child: Text(
                  'Fazer Check in!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0072DE),
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
