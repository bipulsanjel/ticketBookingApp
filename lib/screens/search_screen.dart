import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingCircle(color: Color(0xFF2d2d2b), size: 50.0),
            Gap(5),
            Text(
              "Bistarai bistarai banihalcha ni bhai...\n                Kina hatar gareko?",
              style: Styles.headlineStyle3.copyWith(color: Color(0xFF2d2d2b)),
            ),
          ],
        ),
      ),
    );
  }
}
