import 'package:flutter/material.dart';
import 'package:wha_hifi_app/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  AppRouter _route = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WHA HiFi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: _route.generateRoute,
    );
  }
}
