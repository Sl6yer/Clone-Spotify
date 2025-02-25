import 'package:clone_spotify/widgets/build_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 0,
          iconTheme: IconThemeData(
            color: Colors.transparent,
          ),
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(
              left: 16,
            ),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  FontAwesomeIcons.spotify,
                  color: Colors.white,
                  size: 33,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Premium',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CircularSpotifyText',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          floating: true,
          backgroundColor: Colors.transparent,
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Ouça sem limites. Experimente \n2 meses de Premium Individual por R\$0 com o Spotify',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'CircularSpotifyText',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Comece Agora',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'CircularSpotifyText',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'R\$ 0 por 2 meses, depois R\$ 21,90 por mês. Oferta disponivel apenas par aquem nunca teve o Premium. Assinatura pelo Spotify. As ofertas do Google Pay podem ser diferentes. Sujeito a Termos. A oferta termina no dia 25 de fevereiro de 2025',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 10.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Card(
            color: const Color.fromARGB(255, 37, 37, 37),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin:
                EdgeInsets.only(left: 16, right: 16.0, top: 16.0, bottom: 25.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Por que assinar o Premium?',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'CircularSpotifyText',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Divider(),
                  SizedBox(
                    height: 15.0,
                  ),
                  buildAdPremium(FontAwesomeIcons.music, 'Música sem anúncios'),
                  SizedBox(
                    height: 15.0,
                  ),
                  buildAdPremium(FontAwesomeIcons.download,
                      'Baixe para ouvir no modo offline'),
                  SizedBox(
                    height: 15.0,
                  ),
                  buildAdPremium(FontAwesomeIcons.shuffle,
                      'Ouça músicas na ordem que quiser'),
                  SizedBox(
                    height: 15.0,
                  ),
                  buildAdPremium(
                      FontAwesomeIcons.headphones, 'Áudio de qualidade alta'),
                  SizedBox(
                    height: 15.0,
                  ),
                  buildAdPremium(FontAwesomeIcons.users,
                      'Possibilidade de ouvir com os amigos \nem tempo real'),
                  SizedBox(
                    height: 15.0,
                  ),
                  buildAdPremium(
                      FontAwesomeIcons.list, 'Fila na ordem que quiser'),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        buildSliver('Planos Disponiveis'),
        //Build Card 1
        buildPlansPremium(
            'Individual',
            const Color.fromARGB(255, 240, 188, 188),
            'Depois é só R\$ 21,90/mês',
            '• 1 Conta Premium',
            '• Cancela quando quiser',
            '• Faça uma assinatura ou pague uma vez só',
            const Color.fromARGB(255, 240, 188, 188)),
        //Build Card 2
        buildPlansPremium(
            'Universitário',
            const Color.fromARGB(255, 242, 219, 255),
            'Depois é só R\$ 11,90/mês',
            '• 1 Conta Premium verificada',
            '• Cancela quando quiser',
            '• Desconto para estudantes',
            const Color.fromARGB(255, 242, 219, 255)),
        //Build Card 3
        buildPlansPremium(
            'Duo',
            const Color.fromARGB(255, 235, 233, 110),
            'Depois é só R\$ 27,90/mês',
            '• 2 Contas Premium',
            '• Cancela quando quiser',
            '• Faça uma assinatura ou pague uma vez só',
            const Color.fromARGB(255, 235, 233, 110)),
        //Build Card 4
        buildPlansPremium(
            'Familia',
            const Color.fromARGB(255, 179, 193, 255),
            'Depois é só R\$ 34,90/mês',
            '• Até 6 Contas Premium',
            '• Cancela quando quiser',
            '• Acesso ao Spotify Kids',
            const Color.fromARGB(255, 179, 193, 255)),
      ],
    );
  }
}
