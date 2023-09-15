import 'package:example/screens/drawer_screen/faqs_screen.dart';
import 'package:example/screens/drawer_screen/info_screen.dart';
import 'package:example/screens/login_screen.dart';
import 'package:example/screens/main_screen.dart';
import 'package:example/screens/out_bording_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


import 'lunch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      localizationsDelegates:const[
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ] ,

       supportedLocales: [
         Locale('ar'),
         Locale('en'),

       ],

     // locale: Locale('ar'),

      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen' : (context) => LunchScreen(),
        '/out_bording_content' : (context) => OutBordingContent(),
        '/login_screen' : (context) => LoginScreen(),
        '/main_screen' : (context) => MainScreen(),
        '/info_screen' : (context) => InfoScreen(),
        '/faqs_screen' : (context) => FaqsScreen(),
      },
    );
  }
}

