import 'dart:ui';

import 'package:flutter/material.dart';

List<dynamic> avatar (String url) {
    return [
      CircleAvatar(
        radius: 60.0,
        backgroundImage: NetworkImage(url)), 
        Text("Pedro Aguilar",
        style: TextStyle (
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w300
        )),
        Text("developer".toUpperCase(),
        style: TextStyle (
          color: Colors.white38,
          fontSize: 18,
          fontWeight: FontWeight.w300
        )),
    ];
}
