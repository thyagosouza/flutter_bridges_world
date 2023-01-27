import 'package:flutter/material.dart';
import 'package:flutter_bridges__world/core/app_colors.dart';

import 'landing_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 20), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LandingPage()));
    });
    return Stack(
      children: [
        Container(
          color: AppColors.mainYellow,
        ),
        Align(
          alignment: Alignment.center,
          child: Icon(Icons.airplanemode_on, color: Colors.black, size: 80),
        ),
        Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 160,
              height: 160,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.black.withOpacity(0.2)),
                strokeWidth: 10,
              ),
            ))
      ],
    );
  }
}
