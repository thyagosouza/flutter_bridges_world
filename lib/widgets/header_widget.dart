import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Where do you',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text('want to go?',
                  style: TextStyle(
                      color: AppColors.mainYellow,
                      fontSize: 30,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: TextField(
              style: TextStyle(color: AppColors.mainYellow, fontSize: 18),
              cursorColor: AppColors.mainYellow,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.lightGray,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                labelText: 'Search',
                hintStyle: TextStyle(color: Colors.transparent),
                labelStyle: TextStyle(color: AppColors.gray),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
