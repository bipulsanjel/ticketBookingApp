import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 20),
          vertical: AppLayout.getHeight(context, 20),
        ),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Text(
            'What are\nyou looking for?',
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getWidth(context, 35),
            ),
          ),
          Gap(AppLayout.getHeight(context, 20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(context, 50),
                ),
                color: Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(context, 50)),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Airline Tickets')),
                  ),
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(context, 50)),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text('Hotels')),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(context, 25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(context, 15)),
          AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),

          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getWidth(context, 18),
              // horizontal: AppLayout.getWidth(context, 12),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2d2d2b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getWidth(context, 10),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getWidth(context, 12),
                  horizontal: AppLayout.getWidth(context, 12),
                ),
              ),
              onPressed: () {
                print("Button tapped");
              },
              child: Center(
                child: Text(
                  'Find Tickets',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
