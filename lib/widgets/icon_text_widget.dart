import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getWidth(context, 12),
        horizontal: AppLayout.getWidth(context, 12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(context, 10)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFFBFC2DF)),
          Gap(AppLayout.getWidth(context, 10)),
          Text(text, style: Styles.textStyle),
        ],
      ),
    );
  }
}
