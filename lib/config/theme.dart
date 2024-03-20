/*import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
    primaryColor: Color.fromRGBO(244, 235, 224, 100),
    brightness: Brightness.light
  );

   static final dark = ThemeData(
    primaryColor: Color.fromRGBO(35, 53, 49, 100),
    brightness: Brightness.dark
  );
}*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFontStyle {
  TextStyle normal(double fontSize, Color color) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
    // return GoogleFonts.tajawal(
    //     fontSize: fontSize, fontWeight: FontWeight.normal, color: color);
  }

  TextStyle bold(double fontSize, Color color) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );

    // return GoogleFonts.tajawal(
    //     fontSize: fontSize, fontWeight: FontWeight.bold, color: color);
  }
}

class customText {
  TextStyle normal(double fontSize, Color color) {
    return GoogleFonts.hind(
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: color,
    );
    // return GoogleFonts.tajawal(
    //     fontSize: fontSize, fontWeight: FontWeight.normal, color: color);
  }

  TextStyle bold(double fontSize, Color color) {
    return GoogleFonts.hind(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  sunTitleStyle(double fontSize, Color color) {
    return GoogleFonts.hind(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
