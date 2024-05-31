import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'session_manager.dart';
import 'pesquisa.dart';
import 'favoritos.dart';
import 'pagina_principal.dart';

class GiftPage extends StatefulWidget {
  @override
  _GiftPageState createState() => _GiftPageState();
}

class _GiftPageState extends State<GiftPage> {
  List<Map<String, dynamic>>? selectedRoute;
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
      'endereço':
          'Praça Joaquim Nabuco, 147 - Santo Antônio, Recife - PE, 50010-480',
      'tipo': 'restaurante'
    },
    {
      'name': 'Restaurante Parraxaxá',
      'location': 'Casa Forte',
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
      'endereço': 'R. Igarassu, 40 - Casa Forte, Recife - PE, 52060-400',
      'tipo': 'restaurante'
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
      'endereço': 'Av. Antônio de Goes, 62 - Pina, Recife - PE, 51011-000',
      'tipo': 'restaurante'
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
      'endereço': 'Av. Alfredo Lisboa, 810 - 7º andar - Recife, PE, 50030-240',
      'tipo': 'restaurante'
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
      'endereço':
          'R. Mamede Simões, 144 - Loja - 8 - Santo Amaro, Recife - PE, 50050-570',
      'tipo': 'bar'
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
      'endereço':
          'Rua Conselheiro Portela, 560 - Espinheiro, Recife - PE, 52020-035',
      'tipo': 'bar'
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
      'endereço': 'R. Vig. Tenório, 185 - Recife, PE, 50030-010',
      'tipo': 'bar'
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
      'endereço':
          'R. Comendador Franco Ferreira, 430 - San Martin, Recife - PE, 50761-310',
      'tipo': 'bar'
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
      'endereço': 'Av. Boa Viagem, 5426 - Boa Viagem, Recife - PE, 51030-000',
      'tipo': 'hotel'
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
      'endereço':
          'R. Barão de Souza Leão, 451 - Boa Viagem, Recife - PE, 51030-300',
      'tipo': 'hotel'
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
      'endereço': 'Av. Boa Viagem, 1906 - Boa Viagem, Recife - PE, 51011-000',
      'tipo': 'hotel'
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
      'endereço': 'R. da Aurora, 225 - Boa Vista, Recife - PE, 50050-000',
      'tipo': 'hotel'
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
      'endereço': 'R. das Ninfas, 125 - Boa Vista, Recife - PE, 50070-050',
      'tipo': 'boate'
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
      'endereço': 'R. Gregório Júnior, 264 - Cordeiro, Recife - PE, 50630-245',
      'tipo': 'boate'
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
      'endereço': 'R. Corredor do Bpo., 6 - Boa Vista, Recife - PE, 50050-090',
      'tipo': 'boate'
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
      'endereço':
          'Rua Wilfrid Russel Shorto, 90 - Boa Viagem, Recife - PE, 51020-300',
      'tipo': 'boate'
    },
  ];
  final SessionManager sessionManager = SessionManager();

  @override
  void initState() {
    super.initState();
    loadRoute();
    fetchPagesData();
  }

  Future<void> fetchPagesData() async {
    final url = Uri.parse('https://parseapi.back4app.com/classes/PagesData');
    final response = await http.get(
      url,
      headers: {
        'X-Parse-Application-Id': 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04',
        'X-Parse-REST-API-Key': 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        pagesData.addAll(List<Map<String, dynamic>>.from(data['results']));
      });
    } else {
      print('Erro ao buscar dados: ${response.statusCode}');
    }
  }

  Future<void> saveRoute() async {
    if (sessionManager.userId == null || selectedRoute == null) {
      print('Erro: ID do usuário ou rota selecionada não disponível');
      return;
    }

    final updateUrl = Uri.parse(
        'https://parseapi.back4app.com/users/${sessionManager.userId}');
    final response = await http.put(
      updateUrl,
      headers: {
        'X-Parse-Application-Id': 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04',
        'X-Parse-REST-API-Key': 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp',
        'X-Parse-Session-Token': sessionManager.sessionToken!,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'rota': selectedRoute}),
    );

    if (response.statusCode == 200) {
      print('Rota salva com sucesso');
    } else {
      print('Erro ao salvar rota: ${response.body}');
    }
  }

  Future<void> loadRoute() async {
    if (sessionManager.userId == null) {
      print('Erro: ID do usuário não disponível');
      return;
    }

    final userUrl = Uri.parse(
        'https://parseapi.back4app.com/users/${sessionManager.userId}');
    final response = await http.get(
      userUrl,
      headers: {
        'X-Parse-Application-Id': 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04',
        'X-Parse-REST-API-Key': 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp',
        'X-Parse-Session-Token': sessionManager.sessionToken!,
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final userData = jsonDecode(response.body);
      if (userData['rota'] != null) {
        setState(() {
          selectedRoute = List<Map<String, dynamic>>.from(userData['rota']);
        });
        //print('Rota carregada: $selectedRoute');
      } else {
        print('Nenhuma rota encontrada para o usuário');
      }
    } else {
      print('Erro ao carregar rota: ${response.body}');
    }
  }

  Future<void> deleteRoute() async {
    if (sessionManager.userId == null) {
      print('Erro: ID do usuário não disponível');
      return;
    }

    final updateUrl = Uri.parse(
        'https://parseapi.back4app.com/users/${sessionManager.userId}');
    final response = await http.put(
      updateUrl,
      headers: {
        'X-Parse-Application-Id': 'bDAywaZH2UP0lTxB6tNae8zvjhjOVRNeT2xfMK04',
        'X-Parse-REST-API-Key': 'ocgoygFJj53BKwD3zTV0vQjoiulDrfM8HHiwGOgp',
        'X-Parse-Session-Token': sessionManager.sessionToken!,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'rota': null}),
    );

    if (response.statusCode == 200) {
      setState(() {
        selectedRoute = null;
      });
      print('Rota deletada com sucesso');
    } else {
      print('Erro ao deletar rota: ${response.body}');
    }
  }

  void navigateToCreateRoutePage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CreateRoutePage(pagesData)),
    );

    if (result != null) {
      setState(() {
        selectedRoute = result;
      });
      await saveRoute();
    }
  }

  void navigateToRouteDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RouteDetailsPage(selectedRoute!)),
    ).then((value) {
      if (value == true) {
        setState(() {
          selectedRoute = null;
        });
      }
    });
  }

//---------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotas'),
      ),
      body: Center(
        child: Column(
          children: [
            selectedRoute == null
                ? Text('Nenhuma rota encontrada')
                : GestureDetector(
                    onTap: navigateToRouteDetails,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Color(0x74080505),
                            offset: Offset(0, 5),
                            spreadRadius: 0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rota Criada',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          ...selectedRoute!.map((place) {
                            return ListTile(
                              leading: Image.network(
                                place['imageUrl'],
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              title: Text(place['name']),
                              subtitle: Text(place['location']),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
            Spacer(),
            ElevatedButton(
              onPressed: navigateToCreateRoutePage,
              child: Text('Criar Rota'),
            ),
            ElevatedButton(
              onPressed: selectedRoute != null ? deleteRoute : null,
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Text('Deletar Rota'),
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
                          MaterialPageRoute(
                              builder: (context) => PesquisaPage()),
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

  //---------------------------------------------------
}

class CreateRoutePage extends StatefulWidget {
  final List<Map<String, dynamic>> pagesData;

  CreateRoutePage(this.pagesData);

  @override
  _CreateRoutePageState createState() => _CreateRoutePageState();
}

class _CreateRoutePageState extends State<CreateRoutePage> {
  String? selectedHotel;
  String? selectedRestaurant;
  String? selectedBar;
  String? selectedBoate;

  void onCreateRoute() {
    Navigator.pop(context, [
      widget.pagesData.firstWhere((data) => data['name'] == selectedHotel),
      widget.pagesData.firstWhere((data) => data['name'] == selectedRestaurant),
      widget.pagesData.firstWhere((data) => data['name'] == selectedBar),
      widget.pagesData.firstWhere((data) => data['name'] == selectedBoate),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Rota'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Hotéis'),
                  subtitle: Column(
                    children: widget.pagesData
                        .where((data) => data['tipo'] == 'hotel')
                        .map((data) => RadioListTile<String>(
                              title: Text(data['name']),
                              value: data['name'],
                              groupValue: selectedHotel,
                              onChanged: (value) {
                                setState(() {
                                  selectedHotel = value;
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
                ListTile(
                  title: Text('Restaurantes'),
                  subtitle: Column(
                    children: widget.pagesData
                        .where((data) => data['tipo'] == 'restaurante')
                        .map((data) => RadioListTile<String>(
                              title: Text(data['name']),
                              value: data['name'],
                              groupValue: selectedRestaurant,
                              onChanged: (value) {
                                setState(() {
                                  selectedRestaurant = value;
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
                ListTile(
                  title: Text('Bares'),
                  subtitle: Column(
                    children: widget.pagesData
                        .where((data) => data['tipo'] == 'bar')
                        .map((data) => RadioListTile<String>(
                              title: Text(data['name']),
                              value: data['name'],
                              groupValue: selectedBar,
                              onChanged: (value) {
                                setState(() {
                                  selectedBar = value;
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
                ListTile(
                  title: Text('Boates'),
                  subtitle: Column(
                    children: widget.pagesData
                        .where((data) => data['tipo'] == 'boate')
                        .map((data) => RadioListTile<String>(
                              title: Text(data['name']),
                              value: data['name'],
                              groupValue: selectedBoate,
                              onChanged: (value) {
                                setState(() {
                                  selectedBoate = value;
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: selectedHotel != null &&
                    selectedRestaurant != null &&
                    selectedBar != null &&
                    selectedBoate != null
                ? onCreateRoute
                : null,
            child: Text('Criar Rota'),
          ),
        ],
      ),
    );
  }
}

class RouteDetailsPage extends StatelessWidget {
  final List<Map<String, dynamic>> selectedRoute;

  RouteDetailsPage(this.selectedRoute);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Rota'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: selectedRoute.map((place) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Color(0x74080505),
                  offset: Offset(0, 5),
                  spreadRadius: 0,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place['name'],
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  place['description'],
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Image.network(
                  place['imageUrl'],
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Endereço: ${place['endereço']}',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, true);
        },
        child: Icon(Icons.delete),
        backgroundColor: Colors.red,
      ),
    );
  }
}
