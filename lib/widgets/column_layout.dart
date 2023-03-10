import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(this.firstText, style: Styles.headLineStyle3.copyWith(color: Colors.black),),
        Gap(5),
        Text(this.secondText, style: Styles.headLineStyle4),
      ],
    );
  }
}
