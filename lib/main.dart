import 'package:flutter/material.dart';
import 'package:untitled/components/home.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:untitled/components/loading.dart';
import 'package:untitled/components/search.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/search': (context) => Search()
  },

  theme: FlexThemeData.light(
    scheme: FlexScheme.hippieBlue,
    fontFamily: 'FunnelDisplay'
  ),
  darkTheme: FlexThemeData.dark(scheme: FlexScheme.hippieBlue),
  themeMode: ThemeMode.dark,


));


//Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ButtonSection(icon: Icons.call, title: 'Call'),
//                   ButtonSection(icon: Icons.route, title: 'Route'),
//                   ButtonSection(icon: Icons.share, title: 'Share')
//                 ],
//               ),