import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../models/atraction_model.dart';
import '../pages/details_page.dart';

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
          return AttractionCardWidget(
            attractionModel: currentAttraction,
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class AttractionCardWidget extends StatelessWidget {
  AttractionModel? attractionModel;

  AttractionCardWidget({this.attractionModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(
                  selectedModel: attractionModel,
                )));
      },
      child: Container(
        width: 180,
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      attractionModel!.imgPath!,
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
                      Colors.black.withOpacity(0.5),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      attractionModel!.name!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      attractionModel!.location!,
                      style: TextStyle(
                        color: AppColors.mainYellow,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
