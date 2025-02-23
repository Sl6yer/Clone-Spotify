import 'package:flutter/material.dart';
import 'build_widgets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 37, 37, 37),
          ),
        );

    return Drawer(
      child: Stack(
        children: [
          _buildDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 10, top: 25.0),
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                height: 100.0,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image.png'),
                      radius: 22,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Usuario',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'CircularSpotifyText',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 22.0),
                child: Divider(),
              ),
              Column(
                children: [
                  buildAddAccountRow(
                      'Adicionar Conta', Icons.add_circle_outline),
                  SizedBox(
                    height: 20.0,
                  ),
                  buildAddAccountRow('Novidades', Icons.flash_on),
                  SizedBox(
                    height: 20.0,
                  ),
                  buildAddAccountRow('Recentes', Icons.access_time),
                  SizedBox(
                    height: 20.0,
                  ),
                  buildAddAccountRow('Configuração', Icons.settings),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
