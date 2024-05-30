import 'package:flutter/material.dart';
import 'favoritos.dart';
import 'gift_page.dart';
import 'pagina_principal.dart';

class PesquisaPage extends StatefulWidget {
  @override
  _PesquisaPageState createState() => _PesquisaPageState();
}

class _PesquisaPageState extends State<PesquisaPage> {
  TextEditingController inputController = TextEditingController();

  final List<Map<String, dynamic>> pagesData = [
    {
      'name': 'Restaurante Leite',
      'location': 'Santo Antonio',
      'imageUrl':
          'https://pe.unit.br/wp-content/uploads/2023/09/restaurante-leite.jpg',
      'description':
          'O Restaurante Leite é o mais antigo em funcionamento no Brasil, localizado em Recife, Pernambuco. Fundado em 1882, é um ícone da culinária pernambucana.',
      'gallery': [
        'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2024/01/leite1.jpg',
        'https://www.joaoalberto.com/wp-content/uploads/2019/04/25/leite-sala-do-restaurante-f7adb.jpg',
        'https://www.joaoalberto.com/wp-content/uploads/2012/09/28/restaurante-leite.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/02/60/a2/dd/classico-com-adega-maravilhosa.jpg',
        'https://visit.recife.br/wp-content/uploads/2017/11/onde-comer-leite-02.jpg'
      ],
    },

    {
      'name': 'Restaurante Parraxaxá',
      'location': 'Boa Viagem / Casa Forte',
      'imageUrl':
          'https://media-cdn.tripadvisor.com/media/photo-s/05/58/e8/1d/parraxaxa.jpg',
      'description':
          'O Restaurante Parraxaxá em Recife, encanta com sua decoração nordestina e pratos típicos regionais. É o lugar perfeito para saborear a culinária pernambucana em um ambiente acolhedor.',
      'gallery': [
        'https://media-cdn.tripadvisor.com/media/photo-s/05/70/b5/c0/parraxaxa.jpg',
        'https://rota1976.com/wp-content/uploads/2018/11/IMG_7111.jpg',
        'https://www.joaoalberto.com/wp-content/uploads/2021/02/10/3e5868fe-511c-49ce-9f12-b31c2953c2ee-1024x767.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/1c/67/f5/29/parraxaxa-casa-forte.jpg',
        'https://rota1976.com/wp-content/uploads/2018/11/IMG_7126.jpg'
      ],
    },
    {
      'name': 'Restaurante Bargaço',
      'location': 'Pina',
      'imageUrl':
          'https://media-cdn.tripadvisor.com/media/photo-s/0f/88/b8/df/photo0jpg.jpg',
      'description':
          'O Restaurante Bargaço, fundado em 1971 em Salvador, Bahia, é renomado por sua culinária baiana autêntica. Especializado em frutos do mar, oferece pratos como moqueca e camarão na moranga.',
      'gallery': [
        'https://media-cdn.tripadvisor.com/media/photo-s/0f/88/b8/df/photo0jpg.jpg',
        'https://iili.io/J28jMTG.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/63/63/1d/bargaco.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/0b/0b/c0/66/bargaco-recife-pe-prato.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/0d/b0/5a/46/peixe-inteiro.jpg'
      ],
    },
    {
      'name': 'Moendo Na Laje',
      'location': 'Recife Antigo',
      'imageUrl':
          'https://images.squarespace-cdn.com/content/v1/51ef2bf2e4b02bcf8471333b/017d3b02-441a-4be9-9323-d7173918d853/moendo-na-laje.jpg',
      'description':
          'Moendo Na Laje é um restaurante conhecido por sua cozinha regional e ambiente descontraído. Localizado em uma charmosa laje urbana, oferece pratos típicos com um toque moderno.',
      'gallery': [
        'https://cdn.folhape.com.br/img/c/1200/900/dn_arquivo/2022/10/copia-de-priscila-enquadramento-capa-10_1.jpg',
        'https://cdn.folhape.com.br/img/c/1200/900/dn_arquivo/2022/10/whatsapp-image-2022-10-20-at-111632-am-2.jpeg',
        'https://cdn.folhape.com.br/img/c/1200/900/dn_arquivo/2022/10/whatsapp-image-2022-10-20-at-111633-am-1.jpeg',
        'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2023/01/whatsapp-image-2023-01-27-at-164551.jpeg',
        'https://visit.recife.br/wp-content/uploads/2020/07/cais-destaque-1-1.jpg'
      ],
    },
    {
      'name': 'Bar Central',
      'location': 'Santo Amaro',
      'imageUrl':
          'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2024/01/bar-central-foto-andrea-rego-barros-aregobarrosfoto-5.jpg',
      'description':
          'O Bar Central em Santo Amaro é um ponto tradicional da região, famoso por seu ambiente acolhedor e cardápio variado. Especializado em petiscos clássicos, como coxinha e pastel.',
      'gallery': [
        'https://visit.recife.br/wp-content/uploads/2017/11/onde-comer-bar-central-01.jpg',
        'https://visit.recife.br/wp-content/uploads/2017/11/onde-comer-bar-central-03.jpg',
        'https://www.baressp.com.br/bares/fotos/barcentral7tratada.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/08/4d/bd/80/central.jpg',
        'https://www.joaoalberto.com/wp-content/uploads/2019/05/30/Gole__Gula_Bar_Central_Recife_PE_03.jpg'
      ],
    },
    {
      'name': 'Downtown Pub',
      'location': 'Espinheiro',
      'imageUrl': 'https://images.sympla.com.br/6474cf7ce8d24.jpg',
      'description':
          'O Downtown Pub é um bar vibrante conhecido por suas noites animadas e atmosfera acolhedora. Localizado no coração da cidade, o pub oferece uma vasta seleção de cervejas artesanais e coquetéis.',
      'gallery': [
        'https://media-cdn.tripadvisor.com/media/photo-s/01/f1/f2/b5/caption.jpg',
        'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2018/06/21/755535/20180621150624837201e.jpg',
        'https://imagens.ne10.uol.com.br/legado/blogsne10/social1/uploads/2018/05/downtown.jpg',
        'https://www.guiadasemana.com.br/contentFiles/system/pictures/2013/6/79104/cropped/downtown-pub-recife-guia.jpg',
        'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2018/05/03/750801/20180503185622573189e.jpg'
      ],
    },
    {
      'name': 'Burburinho Recifebar',
      'location': 'Recife Antigo',
      'imageUrl':
          'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2015/05/25/578094/20150525102031978828a.jpg',
      'description':
          'O Burburinho Recifebar é um ponto de encontro popular em Recife, famoso por seu ambiente animado e programação cultural variada. Situado no centro da cidade, oferece uma experiência única.',
      'gallery': [
        'https://media-cdn.tripadvisor.com/media/photo-s/07/e2/66/11/lugar-legal-musica-boa.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/07/40/85/61/burburinho.jpg',
        'https://www.viajali.com.br/wp-content/uploads/2018/09/bares-em-recife-025-775x477.jpg',
        'https://www.viajali.com.br/wp-content/uploads/2018/09/bares-em-recife-014-775x477.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/10/70/0b/5c/photo0jpg.jpg'
      ],
    },
    {
      'name': 'San Botequim',
      'location': 'San Martin',
      'imageUrl':
          'https://agendadorecife.com.br/wp-content/uploads/2022/09/San-Botequim-.jpg',
      'description':
          'San Botequim é um bar acolhedor e popular, conhecido pela atmosfera amigável. Oferece petiscos deliciosos, cervejas artesanais e coquetéis clássicos. Com música ao vivo e eventos temáticos, é perfeito para uma noite agradável.',
      'gallery': [
        'https://img.restaurantguru.com/c942-San-Botequim-Boa-Viagem-Recife-drink.jpg',
        'https://fastly.4sqi.net/img/general/600x600/28020137_CKg54NGUtVB-1OdGJrfvEGNITJtdW-FNToLnmS0olj0.jpg',
        'https://agendadorecife.com.br/wp-content/uploads/2022/09/San-Botequim-1-1.jpg',
        'https://img.restaurantguru.com/rbac-facade-San-Botequim-Boa-Viagem.jpg',
        'https://img.restaurantguru.com/rbf5-exterior-San-Botequim-Boa-Viagem.jpg'
      ],
    },
    {
      'name': 'Hotel Atlante Plaza',
      'location': 'Boa Viagem',
      'imageUrl': 'https://i.ytimg.com/vi/439oulwWxpw/maxresdefault.jpg',
      'description':
          'O Hotel Atlante Plaza, à beira-mar na Praia de Boa Viagem, em Recife, oferece uma estadia luxuosa com acomodações confortáveis, uma piscina incrível e um restaurante sofisticado.',
      'gallery': [
        'https://www.kayak.com.br/rimg/himg/de/96/aa/expediav2-17253-b9d024-829477.jpg',
        'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_600,q_auto,w_600//hotelier-images/25/f4/b6c8ebfd4f941ec621f5fc1e5dc5b4225c9c1d46286034367dc03589ef93.jpeg',
        'https://images.trvl-media.com/lodging/1000000/450000/443800/443714/c3c85a21.jpg',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/291327885.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/07/75/bb/d7/piscina-com-bar-e-aquecida.jpg'
      ],
    },
    {
      'name': 'Mar Hotel Conventions',
      'location': 'Boa Viagem',
      'imageUrl':
          'https://images.trvl-media.com/lodging/12000000/11480000/11470100/11470001/8235d5c3.jpg',
      'description':
          'O Mar Hotel Conventions, em Boa Viagem, Recife, é uma escolha ideal para quem busca conforto e praticidade. Com quartos bem equipados e áreas de lazer, proporciona uma estadia agradável próxima à praia e a pontos turísticos.',
      'gallery': [
        'https://media-cdn.tripadvisor.com/media/photo-s/06/8f/60/7c/mar-hotel-recife.jpg',
        'https://www.momondo.com.br/himg/8b/d4/75/ice-87080-63950954_3XL-618468.jpg',
        'https://www.letsbookhotel.com/img/max300/108/1083447.jpg',
        'https://i.ytimg.com/vi/WoyQk6FraUI/hqdefault.jpg',
        'https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_600,q_auto,w_600//hotelier-images/fb/d5/4e433696bb2ae8ba063e16f7ff5cf70047bb5824e19bba266dc7d45abf44.jpeg'
      ],
    },
    {
      'name': 'Radisson Hotel Recife',
      'location': 'Boa Viagem',
      'imageUrl':
          'https://radisson.recifetophotels.com/data/Images/1920x1080w/8259/825937/825937472/image-recife-radisson-hotel-1.JPEG',
      'description':
          'O Radisson Hotel Recife, localizado em Boa Viagem, é uma opção luxuosa para os visitantes da cidade. Com quartos elegantes, instalações modernas e vista para o mar, oferece uma experiência de hospedagem única e confortável.',
      'gallery': [
        'https://static.pmweb.com.br/nH8h85CQglHEVhNdX_RewYu4u-k=/https://letsimage.s3.sa-east-1.amazonaws.com/editor/atlantica/pt/hotel/radisson-recife/1631277341806-lobby.jpg',
        'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492800/image-recife-radisson-hotel-4.JPEG',
        'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492485/image-recife-radisson-hotel-5.JPEG',
        'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492593/image-recife-radisson-hotel-2.JPEG',
        'https://radisson.recifetophotels.com/data/Images/1920x1080w/12804/1280492/1280492155/image-recife-radisson-hotel-7.JPEG'
      ],
    },
    {
      'name': 'Recife Plaza Hotel',
      'location': 'Boa Vista',
      'imageUrl':
          'https://visit.recife.br/wp-content/uploads/2020/08/recife-plaza-destaque-3-1.jpg',
      'description':
          'A página do Recife Plaza Hotel oferece uma visão completa do hotel, com detalhes sobre suas instalações e comodidades de alta qualidade. Descubra mais e faça sua reserva para uma estadia excepcional em Recife.',
      'gallery': [
        'https://visit.recife.br/wp-content/uploads/2020/08/recife-plaza-destaque-2-1.jpg',
        'https://visit.recife.br/wp-content/uploads/2020/08/recife-plaza-destaque-1-1.jpg',
        'https://recife-plaza-hotel.hotelempernambuco.com/data/Images/1920x1080w/12386/1238664/1238664751/image-recife-recife-plaza-hotel-50050-000-12.JPEG',
        'https://recife-plaza-hotel.hotelempernambuco.com/data/Images/1920x1080w/12394/1239464/1239464743/image-recife-recife-plaza-hotel-50050-000-15.JPEG',
        'https://recife-plaza-hotel.hotelempernambuco.com/data/Images/1920x1080w/12394/1239470/1239470356/image-recife-recife-plaza-hotel-50050-000-16.JPEG'
      ],
    },
    {
      'name': 'Clube Metropole',
      'location': 'Boa Vista',
      'imageUrl':
          'https://cdn.folhape.com.br/img/pc/1100/1/dn_arquivo/2023/01/325802337-563022578788160-7182077978201316185-n.jpg',
      'description':
          'O Clube Metrópole é um ícone da vida noturna em Recife, conhecido por suas festas vibrantes e diversificadas. Com múltiplos ambientes e uma atmosfera acolhedora.',
      'gallery': [
        'https://images.sympla.com.br/6239b1e16d776.jpg',
        'https://i0.wp.com/diversidade.blogsdagazetaweb.com/wp-content/uploads/sites/9/2022/04/IMG-20220429-WA0248.jpg',
        'https://i0.wp.com/diversidade.blogsdagazetaweb.com/wp-content/uploads/sites/9/2023/06/2577FA98-680B-4956-92B4-8B7D60FD201A.jpeg',
        'https://instaload.net/pt/wp-content/uploads/2023/01/club-metropole-6.jpg',
        'https://instaload.net/pt/wp-content/uploads/2023/01/club-metropole-7.jpg'
      ],
    },
    {
      'name': 'Sala De Reboco',
      'location': 'Cordeiro',
      'imageUrl':
          'https://s2-g1.glbimg.com/2czuTqULGp6ByTX2vHobum4oWas=/0x0:3008x2000/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/3/x/fMzknPSpAogNVK005l4w/sala-de-reboco-tem-programacao-de-pe-de-serra.jpg',
      'description':
          'A Sala de Reboco é um espaço cultural em Recife dedicado à música nordestina e à dança de forró. Com uma atmosfera acolhedora e animada, o local é conhecido por suas festas tradicionais e apresentações ao vivo de artistas locais e regionais.',
      'gallery': [
        'https://www2.recife.pe.gov.br/wp-content/uploads/0622-SALA-DE-REBOCO-3-CA.jpg',
        'https://visit.recife.br/wp-content/uploads/2018/04/o-que-fazer-sala-de-reboco-destaque.jpg',
        'https://www.diariodepernambuco.com.br/static/app/noticia_127983242361/2023/06/19/932340/20230619210905758125i.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-m/1280/18/2b/ff/66/vista-interna.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-w/18/2b/fe/ee/ambiente-interno.jpg'
      ],
    },
    {
      'name': 'MKB Meu Kaso Bar',
      'location': 'Boa Vista',
      'imageUrl':
          'https://fastly.4sqi.net/img/general/600x600/74245636_Y8jXiikcpAOqtrAzNJuYnkyX2TCG7Cl7isyUqFVfn7M.jpg',
      'description':
          'A MKB Boate é um ícone da vida noturna em Recife, oferecendo música eletrônica de alta energia e uma atmosfera animada para os fãs da balada. Com um ambiente moderno e uma pista de dança vibrante, é o lugar perfeito para se divertir e dançar a noite toda.',
      'gallery': [
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/e9/8b/49/som.jpg',
        'https://img.restaurantguru.com/r947-Mkb-Meu-Kaso-Bar-exterior.jpg',
        'https://i.ytimg.com/vi/RVKTLXViLcI/hqdefault.jpg',
        'https://i.ytimg.com/vi/G6ksAqksSu0/hqdefault.jpg',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/af/ef/05/pub-crawl-recife.jpg'
      ],
    },
    {
      'name': 'Sampa Night Club',
      'location': 'Boa Viagem',
      'imageUrl': 'https://pbs.twimg.com/media/B2QfKIXIQAAyLhm.jpg',
      'description':
          'O Sampa Night Club é um destino popular para quem busca diversão noturna em São Paulo. Com uma atmosfera vibrante e uma variedade de eventos ao vivo, é o lugar ideal para dançar e socializar.',
      'gallery': [
        'https://img.restaurantguru.com/r888-Sampa-Night-Club-bar-counter.jpg',
        'https://imagesapt.apontador-assets.com/fit-in/640x480/32aac4757a604a1d97cf01d6dd2c3dc6/sampa-night-club-boa-viagem-15433622207013614.jpg',
        'https://s2.glbimg.com/AsFoy_47Lu8lt9DR6aKRTWld8_s=/s.glbimg.com/jo/g1/f/original/2014/11/12/under.jpg',
        'https://www.jornaldocomercio.com/_midias/jpg/2022/04/26/1980___crocodillo_s___acervo_fabio_reis__5_-9611021.jpg',
        'https://cdn.topmidianews.com.br/upload/dn_arquivo/2024/05/boate-da-putaria-2.jpg'
      ],
    },

    // Adicione mais entradas aqui para outras páginas
  ];

  void navigateToPage(Map<String, dynamic> pageData) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DynamicPage(pageData: pageData),
      ),
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
                  for (int i = 0; i < pagesData.length; i += 2)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildClickableImage(context, pagesData[i]),
                          if (i + 1 < pagesData.length)
                            _buildClickableImage(context, pagesData[i + 1]),
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

  Widget _buildClickableImage(
      BuildContext context, Map<String, dynamic> pageData) {
    return GestureDetector(
      onTap: () {
        navigateToPage(pageData);
      },
      child: Column(
        children: [
          Image.network(
            pageData['imageUrl'],
            width: 100, // Ajuste a largura da imagem conforme necessário
            height: 100, // Ajuste a altura da imagem conforme necessário
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error);
            },
          ),
          SizedBox(height: 5), // Espaço entre a imagem e o texto
          Text(
            pageData['name'],
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

class DynamicPage extends StatelessWidget {
  final Map<String, dynamic> pageData;

  DynamicPage({required this.pageData});

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
                  pageData['imageUrl'],
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
                            pageData['name'],
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
                                pageData['location'],
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
                          for (String imageUrl in pageData['gallery'])
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                imageUrl,
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
                        pageData['description'],
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
