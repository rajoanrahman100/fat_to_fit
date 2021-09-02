import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBlackColor = Colors.black;
const kWhiteColor = Colors.white;

Text textRoboto(String title, Color color,
    {double? fontSize,
    FontWeight? fontWeight,
    int? maxLine,
    TextDecoration? textDecoration}) {
  return Text(
    title,
    style: GoogleFonts.ubuntu(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: textDecoration),
    maxLines: maxLine ?? 2,
    overflow: TextOverflow.ellipsis,
    softWrap: false,
  );
}

const size5 = SizedBox(height: 5);
const size10 = SizedBox(height: 10);
const size15 = SizedBox(height: 15);

const width5 = SizedBox(
  width: 5,
);
const width10 = SizedBox(
  width: 10,
);
const width15 = SizedBox(
  width: 15,
);


ThemeData theme = ThemeData(
  appBarTheme: appBarTheme,
  backgroundColor: kWhiteColor,
  iconTheme: iconThemeData,
  scaffoldBackgroundColor: kWhiteColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: kWhiteColor,
  elevation: 0.0,
  textTheme: const TextTheme(
    headline6: const TextStyle(
      fontSize: 20,
    ),
  ),
);

IconThemeData iconThemeData = IconThemeData(color: kWhiteColor);
