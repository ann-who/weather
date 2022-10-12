/// Extract this widget to avoid code repetition

import 'package:flutter/material.dart';
import 'package:weather/utils/app_constants.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage(AppImages.backgroundImage),
          fit: BoxFit.fitWidth,
          opacity: AppWidgetsSetting.imageOpacity,
        ),
      ),
    );
  }
}
