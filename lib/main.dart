import 'package:admin_panel/constant.dart';
import 'package:flutter/material.dart' show AppBar, BuildContext, Center, ColorScheme, Colors, Column, FloatingActionButton, Icon, Icons, MainAxisAlignment, MaterialApp, Scaffold, State, StatefulWidget, StatelessWidget, Text, Theme, ThemeData, Widget, runApp;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'home_page.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [
      //   GlobalMaterialLocalization.d
      // ],
      title: 'Fazaa Admin',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
