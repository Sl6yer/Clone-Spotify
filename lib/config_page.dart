import 'package:clone_spotify/ViewAccount_page.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  Route _criarRota() {
    return MaterialPageRoute(builder: (context) => AccountPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Configurações',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'CircularSpotifyText',
              fontWeight: FontWeight.bold,
              fontSize: 25.0),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 6.0,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(_criarRota());
                  },
                  child: Text(
                    'View Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CircularSpotifyText',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.north_east,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Log Out',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Icon(
              Icons.horizontal_rule,
              color: Colors.white,
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Premium',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Support',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Download',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Privacy',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Terms',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(18, 18, 18, 1.0),
    );
  }
}
