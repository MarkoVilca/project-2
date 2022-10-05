import 'package:app02/src/presentation/avatar.dart';
import 'package:app02/src/presentation/info_item.dart';
import 'package:app02/src/presentation/social.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...avatar(
              "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg"),
          Divider(
            thickness: 1.0,
            color: Colors.white38,
            indent: 120.0,
            endIndent: 120.0,
          ),
          infoItem("+51 123 123 123", "Telefono", Icons.phone, Colors.indigo),
          infoItem("pedro@gmail.com", "Correo", Icons.mail, Colors.indigo),
          social(),
        ],
      ),
    ));
  }
}
