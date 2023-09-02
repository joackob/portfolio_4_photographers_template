import 'package:flutter/material.dart';
import 'package:portfolio_4_photographers_template/theme/theme.dart';

class MainTitleViews extends StatelessWidget {
  final String title;
  const MainTitleViews({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: minVerticalSpacing,
        horizontal: minHorizontalSpacing,
      ),
      height: 40,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: negro,
        ),
      ),
    );
  }
}
