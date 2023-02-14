import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

bool isDarkMode = true;

get mq => MediaQuery.of(globalContext);
get mqs => MediaQuery.of(globalContext).size;

var primaryColor = Colors.blueGrey[800]!;
var secondaryColor = const Color(0xFF2A2D3E);
var bgColor = const Color(0xFF212332);
var defaultPadding = 16.0;

var dangerColor = Colors.red[300]!;
var successColor = Colors.green[300]!;
var infoColor = Colors.blue[300]!;
var warningColor = Colors.orange[300]!;
var disabledColor = Colors.grey[300]!;

var disabledTextColor = Colors.grey[800];

Color appbarBackgroundColor = Colors.white;
Color scaffoldBackgroundColor = Colors.grey[300]!;
MaterialColor primarySwatch = Colors.blueGrey;
TextStyle googleFont = GoogleFonts.inter();
Color drawerBackgroundColor = const Color(0xff404E67);
Color drawerFontColor = Colors.grey[300]!;

double cardElevation = 2.0;
double cardBorderRadius = 24.0;

const double h1 = 36;
const double h2 = 30;
const double h3 = 24;
const double h4 = 20;
const double h5 = 16;
const double h6 = 14;

const double fs1 = 36;
const double fs2 = 30;
const double fs3 = 24;
const double fs4 = 20;
const double fs5 = 16;
const double fs6 = 14;

const defaultRadius = 20;

Color textColor1 = const Color(0xff101828);
Color textColor2 = Colors.grey[600]!;
Color textColor3 = Colors.grey[500]!;
Color textColor4 = Colors.grey[500]!;
Color textColor5 = Colors.grey[300]!;
Color textColor6 = Colors.grey[200]!;

Color iconColor1 = const Color(0xff101828);
Color iconColor2 = Colors.grey[600]!;
Color iconColor3 = Colors.grey[500]!;
Color iconColor4 = Colors.grey[500]!;
Color iconColor5 = Colors.grey[300]!;
Color iconColor6 = Colors.grey[200]!;

const double hxs = 30;
const double hsm = 40;
const double hmd = 50;
const double hlg = 60;
const double hxl = 70;

const double wxs = 30;
const double wsm = 40;
const double wmd = 50;
const double wlg = 60;
const double wxl = 70;

double get w100 {
  return MediaQuery.of(globalContext).size.width;
}

double get w90 {
  return MediaQuery.of(globalContext).size.width * 0.9;
}

double get w80 {
  return MediaQuery.of(globalContext).size.width * 0.8;
}

double get w70 {
  return MediaQuery.of(globalContext).size.width * 0.7;
}

double get w60 {
  return MediaQuery.of(globalContext).size.width * 0.6;
}

double get w50 {
  return MediaQuery.of(globalContext).size.width * 0.5;
}

double get w40 {
  return MediaQuery.of(globalContext).size.width * 0.4;
}

double get w30 {
  return MediaQuery.of(globalContext).size.width * 0.3;
}

double get w20 {
  return MediaQuery.of(globalContext).size.width * 0.2;
}

double get w10 {
  return MediaQuery.of(globalContext).size.width * 0.1;
}

const double rxs = 6;
const double rsm = 12;
const double rmd = 20;
const double rlg = 30;
const double rxl = 40;
