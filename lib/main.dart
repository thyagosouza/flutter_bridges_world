// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bridges__world/core/app_colors.dart';
import 'package:flutter_bridges__world/models/atraction_model.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidget(),
            AttractionListView(),
          ],
        ),
      ),
    );
  }
}

//? ---------- WIDGETS

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Where do you',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'want to go?',
            style: TextStyle(
                color: AppColors.mainYellow,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.lightGray,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.search,
                  color: AppColors.gray,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Search',
                  style: TextStyle(color: AppColors.gray),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AttractionListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            itemCount: attractions.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              AttractionModel currentAttraction = attractions[index];
              return AttractionCard(attractionModel: currentAttraction);
            }));
  }
}

class AttractionCard extends StatelessWidget {
  AttractionModel? attractionModel;
  AttractionCard({this.attractionModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(attractionModel!.imgPath!),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(attractionModel!.name!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  attractionModel!.location!,
                  style: TextStyle(color: AppColors.mainYellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
