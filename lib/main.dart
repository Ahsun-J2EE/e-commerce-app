
import 'package:flutter/material.dart';
import 'package:my_app_ecommerce/screens/signup.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My E-commerce App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.grey), color: Colors.white24)
      ),
      home: SignUp(),
    );
  }
}
