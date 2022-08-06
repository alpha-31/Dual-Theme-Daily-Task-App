import 'package:flutter/material.dart';
import 'UI/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Task App(Dual Theme)',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark ,
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
