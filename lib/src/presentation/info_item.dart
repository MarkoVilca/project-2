import 'package:flutter/material.dart';

Card infoItem(title, subtitle, IconData icon, Color color) {
  return (Card(
    margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
    elevation: 8.0,
    child: ListTile(
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      title: Text(title),
      leading: Icon(color: color, icon),
      trailing: Icon(color: color, Icons.check_circle_outlined),
    ),
  ));
}
