import 'package:flutter/material.dart';
import 'package:clone_spotify/widgets/build_widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                  color: Colors.white,
                )
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
      ],
    );
  }
}
