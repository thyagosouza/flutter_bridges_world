import 'package:flutter/material.dart';
import 'package:flutter_bridges__world/core/app_colors.dart';

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
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryGray,
        iconTheme: const IconThemeData(color: AppColors.mainYellow),
        title: const Center(
          child: Icon(
            Icons.airplanemode_on,
            color: AppColors.mainYellow,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_on_outlined,
                color: AppColors.gray,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: AppColors.mainYellow,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20),
          child: Icon(Icons.airplanemode_on, size: 80, color: AppColors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryGray,
              AppColors.secondaryGray,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}