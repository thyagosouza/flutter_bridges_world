// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bridges__world/models/atraction_model.dart';
import 'package:flutter_bridges__world/pages/splash_page.dart';

import 'pages/details_page.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
      //home: SplashPage(),
      //home: DetailsPage(selectedModel: attractions[0]),
    );
  }
}
