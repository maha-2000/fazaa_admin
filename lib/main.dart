import 'package:admin_panel/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'custom_page.dart';
import 'home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('ar'),
      ],
      title: 'Fazaa Admin',
      theme: ThemeData(
        fontFamily: "Tajawal",
        primaryColor: kPrimaryColor,
        useMaterial3: true,
      ),
      home:  const HomePage(),
    );
  }
}
