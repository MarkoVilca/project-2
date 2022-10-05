import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconData {
  facebook,
  twitter,
  istagram,
}

extension IconExtension on IconData {
  icon(String url) {
    return (SvgPicture.asset(
      url,
      color: Colors.white,
      height: 40,
    ));
  }

  String get name => describeEnum(this);
  SvgPicture get getIcon {
    switch (this) {
      case IconData.facebook:
        return icon('icons/square-facebook.svg');
      case IconData.twitter:
        return icon('icons/twitter.svg');
      case IconData.istagram:
        return icon('icons/instagram.svg');
      default:
        return icon('icons/square-facebook.svg');
    }
  }
}

Row social() {
  Container icon(IconData iconData) {
    return (Container(
      margin: EdgeInsets.all(8),
      child: (iconData.getIcon),
    ));
  }

  return (Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      icon(IconData.facebook),
      icon(IconData.twitter),
      icon(IconData.istagram),
    ],
  ));
}
