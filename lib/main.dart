import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(29, 27, 50, 1),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          headline6: TextStyle(color: Colors.white, fontFamily: 'Lato'),
          bodyText1: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          bodyText2: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
          subtitle1: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromRGBO(29, 27, 50, 1), 
          elevation: 0,
        ),
      ),
      home: HomeWidget(),
    );
  }
}
