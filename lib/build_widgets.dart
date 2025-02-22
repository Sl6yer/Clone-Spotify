import 'package:flutter/material.dart';

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
