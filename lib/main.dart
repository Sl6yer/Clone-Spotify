import 'package:clone_spotify/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'config_page.dart';
import 'build_widgets.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:
        Colors.black, // Cor de fundo da barra de navegação
    systemNavigationBarIconBrightness:
        Brightness.light, // Cor dos ícones na barra
  ));

  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedButton = -1;

  final _pageController = PageController();

  int _selectIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Página 1: Home'),
    Text('Página 2: Pesquisa'),
    Text('Página 3: Perfil'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        pageController: _pageController,
      ),
      extendBody: true,
      body: CustomScrollView(
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
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image.png'),
                    radius: 18,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildTextButton(0, 'Tudo'),
                        SizedBox(
                          width: 10,
                        ),
                        _buildTextButton(1, 'Música'),
                        SizedBox(
                          width: 10,
                        ),
                        _buildTextButton(2, 'Podcasts'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            floating: true,
            backgroundColor: Colors.transparent,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        buildCard('Músicas \nCurtidas', 'assets/image25.png'),
                        buildCard('Mix de \nGirl in Red', 'assets/image27.png'),
                        buildCard('UTOPIA', 'assets/image26.png'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    // ou Flexible
                    child: Column(
                      children: [
                        buildCard('Flower Boy', 'assets/image28.png'),
                        buildCard('The Days', 'assets/image29.png'),
                        buildCard('Juice WRLD', 'assets/image30.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 8),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildAlbumCard("assets/image.png", "Only English"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image2.png", "Flower Boy"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image3.png", "All Juice WRLD"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image4.png", "The Days(Notion)"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image5.png", "Welcome and goodbye"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image6.png", "Only English"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image7.png", "tempo.zip"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image8.png", "This is Lil peep"),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ),
          ),
          buildSliver('Jump back in'),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildAlbumCard("assets/image9.png", "Duvet"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image10.png", "Historias Ingles"),
                  ],
                ),
              ),
            ),
          ),
          buildSliver('Episodes for you'),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildAlbumCard("assets/image11.png", "Fogo em Gaza"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image12.png", "Brasil Corrupção"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image13.png", "Bad Haircuts"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image14.png", "AudioLivro"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image15.png", "Sobre ser Esquecido"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image16.png", "Sua mente Engana"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image17.png", "harry"),
                  ],
                ),
              ),
            ),
          ),
          buildSliver('Recently played'),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildAlbumCard("assets/image.png", "Only English"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image2.png", "Flower Boy"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image3.png", "All Juice WRLD"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image4.png", "The Days(Notion)"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image5.png", "Welcome and goodbye"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image6.png", "Only English"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image7.png", "tempo.zip"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image8.png", "This is Lil peep"),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ),
          ),
          buildSliver('Made for you'),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            sliver: SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildAlbumCard("assets/image18.png", "Only English"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image19.png", "Flower Boy"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image20.png", "All Juice WRLD"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image21.png", "The Days(Notion)"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image22.png", "Welcome and goodbye"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image23.png", "Only English"),
                    SizedBox(width: 15),
                    buildAlbumCard("assets/image24.png", "tempo.zip"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GNav(
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.white, width: 1),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        tabBackgroundColor: Colors.black,
        selectedIndex: _selectIndex,
        onTabChange: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Inicio',
            iconColor: Colors.white,
          ),
          GButton(
            icon: Icons.search,
            text: 'Buscar',
            iconColor: Colors.white,
          ),
          GButton(
            icon: Icons.collections,
            text: 'Blibioteca',
            iconColor: Colors.white,
          ),
          GButton(
            icon: Icons.music_note,
            text: 'Premium',
            iconColor: Colors.white,
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(15, 15, 15, 1),
    );
  }

  Widget _buildTextButton(int index, String text) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedButton = index;
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: _selectedButton == index
            ? Colors.green
            : Color.fromRGBO(66, 66, 66, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0, left: 5.0),
        child: Text(
          text,
          style: TextStyle(
            color: _selectedButton == index ? Colors.black : Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
