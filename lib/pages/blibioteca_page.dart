import 'package:clone_spotify/widgets/build_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlibiotecaPage extends StatefulWidget {
  const BlibiotecaPage({super.key});

  @override
  State<BlibiotecaPage> createState() => _BlibiotecaPageState();
}

class _BlibiotecaPageState extends State<BlibiotecaPage> {
  int _selectedButton = -1;

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
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/image.png'),
                  radius: 18,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    'Sua Blibioteca',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CircularSpotifyText',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  buildBottomShet(
                                      FaIcon(FontAwesomeIcons.music,
                                          color: Colors.white, size: 25),
                                      'Playlist',
                                      'Crie uma playlist com musicas ou episodios'),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  buildBottomShet(
                                      FaIcon(FontAwesomeIcons.link,
                                          color: Colors.white, size: 25),
                                      'Match',
                                      'Combine os gostos de várias pessoas em \numa playlist compartilhadas')
                                ],
                              ),
                            ),
                          );
                        },
                        backgroundColor: const Color.fromARGB(255, 37, 37, 37));
                  },
                  icon: Icon(Icons.add),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          floating: true,
          backgroundColor: Colors.transparent,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildTextButton(0, 'Playlists'),
                  SizedBox(width: 10),
                  _buildTextButton(1, 'Álbuns'),
                  SizedBox(width: 10),
                  _buildTextButton(2, 'Artistas'),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 33.0,
              left: 16.0,
              right: 16.0,
              bottom: 10.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.swap_vert,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Recentes',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'CircularSpotifyText',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        buildAlbumBlibioteca(
            'assets/image25.png', 'Música Curtidas', 'Playlist - 60 músicas'),
        buildAlbumBlibioteca(
            'assets/image6.png', 'Only English Music', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image5.png', 'Welcome and Goodbye', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image2.png', 'Flower Boy', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image3.png', 'Juice WRLD', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image8.png', 'Lil Peep', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image4.png', 'The days Notion', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image7.png', 'tempo.zip', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image10.png', 'Historias Ingles', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image26.png', 'Travis Scoot', 'Playlist - 60 músicas'),
        buildAlbumBlibioteca(
            'assets/image25.png', 'Música Curtidas', 'Playlist - 60 músicas'),
        buildAlbumBlibioteca(
            'assets/image6.png', 'Only English Music', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image5.png', 'Welcome and Goodbye', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image2.png', 'Flower Boy', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image3.png', 'Juice WRLD', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image8.png', 'Lil Peep', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image4.png', 'The days Notion', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image7.png', 'tempo.zip', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image10.png', 'Historias Ingles', 'Playlist - Sl6yer'),
        buildAlbumBlibioteca(
            'assets/image26.png', 'Travis Scoot', 'Playlist - 60 músicas'),
      ],
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
