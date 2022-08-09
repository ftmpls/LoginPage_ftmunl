import 'package:flutter/material.dart';

import 'presentetion/login.dart';
import 'presentetion/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: <String, WidgetBuilder>{
          '/sign': (BuildContext context) => SignUp(),
          '/login': (BuildContext context) => Login()
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.indigo, fontFamily: 'IndieFlower'
            // brightness: Brightness.light,
            ),
        //darkTheme: ThemeData(
        // brightness: Brightness.dark,
        //),
        // themeMode: ThemeMode.dark,
        home: Login());
  }
}
