import 'package:flutter/material.dart';
import 'package:clone_spotify/widgets/build_widgets.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  Future<void> _takePicture(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);

    if (photo != null) {
      print('Caminho da foto: ${photo.path}');
    }
  }

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
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Text(
                    'Buscar',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CircularSpotifyText',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => _takePicture(context),
                  icon: Icon(Icons.camera_alt),
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
            padding: const EdgeInsets.only(
                top: 25.0, left: 16.0, right: 16.0, bottom: 25.0),
            child: TextField(
              enabled:
                  false, // Desabilitado temporariamente por conta de um bug
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                hintText: 'O que você quer ouvir?',
                hintStyle: TextStyle(
                    fontFamily: 'CircularSpotifyText',
                    fontWeight: FontWeight.w600),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        buildSliver('Descubra algo novo para você'),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 50.0,
            ),
            child: Column(
              children: [
                buildCardSearch(
                    'Musica',
                    const Color.fromARGB(255, 243, 33, 215),
                    'Podcasts',
                    Colors.green),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch(
                    'Eventos \nAo Vivo',
                    const Color.fromARGB(255, 33, 117, 243),
                    'Para você',
                    const Color.fromARGB(255, 53, 9, 211)),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch('Lançamentos', Colors.red, 'Boas festas',
                    const Color.fromARGB(255, 134, 33, 42)),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch('Brasil', const Color.fromARGB(255, 3, 51, 124),
                    'Sertanejo', const Color.fromARGB(255, 223, 122, 6)),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch('Funk', const Color.fromARGB(255, 15, 87, 182),
                    'Samba e \nPagode', const Color.fromARGB(255, 39, 92, 41)),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch(
                    'Paradas de \npodcast',
                    const Color.fromARGB(255, 6, 43, 92),
                    'Lançamentos \nPodcasts ',
                    Colors.red),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch(
                    'Podcasts video',
                    const Color.fromARGB(255, 231, 75, 3),
                    'Originais do \n Spotify',
                    const Color.fromARGB(255, 48, 6, 104)),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch(
                    'Paradas',
                    const Color.fromARGB(255, 102, 3, 231),
                    'Descobrir',
                    const Color.fromARGB(255, 182, 12, 197)),
                SizedBox(
                  height: 10,
                ),
                buildCardSearch('Rádio', const Color.fromARGB(255, 112, 35, 39),
                    'Pop', const Color.fromARGB(255, 55, 126, 136)),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
