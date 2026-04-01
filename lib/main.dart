import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'player_provider.dart';
import 'start_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PlayerProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartPage(),
      theme: ThemeData(
        brightness: Brightness.light,

        scaffoldBackgroundColor: Colors.white,

        primaryColor: Colors.indigo,

        colorScheme: ColorScheme.light(
          primary: Colors.indigo,
          secondary: Colors.yellow,
        ),

        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.indigo,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.blueGrey, fontSize: 19),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.cyan.shade50,
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: -10),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
