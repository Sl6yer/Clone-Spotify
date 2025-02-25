import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildAlbumCard(String imagePath, String title) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: 130,
          height: 130,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    ],
  );
}

Widget buildAlbumBlibioteca(String imagePath, String title, String subtitle) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 70,
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildBottomShet(Widget icon, String title, String subtitle) {
  return Row(
    children: [
      icon, // ✅ Agora o widget é usado corretamente
      SizedBox(width: 15.0),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'CircularSpotifyText',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildCard(String text, String imagePath) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
    color: Color.fromRGBO(37, 37, 37, 1),
    child: Row(
      children: [
        Image.asset(
          imagePath,
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}

Widget buildCardSearch(String text1, Color color1, String text2, Color color2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 170,
        height: 90,
        child: Card(
          color: color1,
          child: Center(
            child: Text(
              text1,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      SizedBox(
        width: 170,
        height: 90,
        child: Card(
          color: color2,
          child: Center(
            child: Text(
              text2,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'CircularSpotifyText',
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildAdPremium(IconData icon, String text) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.white,
      ),
      SizedBox(
        width: 15.0,
      ),
      Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget buildSliver(String text) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'CircularSpotifyText',
            fontWeight: FontWeight.bold,
            fontSize: 18.0),
      ),
    ),
  );
}

Widget buildAddAccountRow(String text, IconData icon) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.white,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
      ),
    ],
  );
}

Widget buildPlansPremium(String title, Color titleColor, String subtitle,
    String desc1, String desc2, String desc3, Color buttonColor) {
  return SliverToBoxAdapter(
    child: Card(
      color: const Color.fromARGB(255, 37, 37, 37),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.spotify,
                  color: Colors.white,
                  size: 25,
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
            SizedBox(
              height: 16.0,
            ),
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontFamily: 'CircularSpotifyText',
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              'R\$ 0 por 1 mês',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'CircularSpotifyText',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 16.0, top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    desc1,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    desc2,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    desc3,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                ),
                child: Text(
                  'Experimente 1 mês por R\$ 0',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'CircularSpotifyText',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 37, 37, 37),
                    side: BorderSide(color: Colors.white)),
                child: Text(
                  'Pagamento único',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'CircularSpotifyText',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
