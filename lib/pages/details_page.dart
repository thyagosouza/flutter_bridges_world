// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bridges__world/models/atraction_model.dart';

import '../core/app_colors.dart';

class DetailsPage extends StatelessWidget {
  AttractionModel? selectedModel;
  DetailsPage({
    this.selectedModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  selectedModel!.imgPath!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  selectedModel!.name!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  selectedModel!.location!,
                  style: TextStyle(
                    color: AppColors.mainYellow,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  selectedModel!.description!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View Comments',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Material(
                        color: AppColors.mainYellow,
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.black.withOpacity(0.1),
                          highlightColor: Colors.black.withOpacity(0.2),
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 20),
                            child: Text(
                              'Use Itinerary',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(
                color: AppColors.mainYellow,
              ),
              title: Center(
                child: Icon(
                  Icons.airplanemode_on,
                  color: AppColors.mainYellow,
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: AppColors.mainYellow,
                    ),
                    onPressed: () {},
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
