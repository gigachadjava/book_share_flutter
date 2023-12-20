import 'package:book_share/utils/colors_consts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData basicTheme() => ThemeData(
      textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: LargeTextSize, color: Color(
              0xFFE88616)),
          headlineSmall: TextStyle(
            fontSize: MediumTextSize,
            fontWeight: FontWeight.w800,
            color: Color(0xFFEF9A9A),
          ),
          bodyLarge: TextStyle(
            fontSize: BodyTextSize,
            color: Colors.green,
          ),),
      iconTheme: const IconThemeData(
        // color: Colors.red,
        size: 25.0,
        color: Colors.blue,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.red,
        foregroundColor: Colors.purple,
      ),
      hintColor: Colors.orange,
      buttonTheme: const ButtonThemeData(
        height: 80,
        buttonColor: Colors.deepPurple,
        textTheme: ButtonTextTheme.accent,
      ),
    );
