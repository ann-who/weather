import 'package:flutter/material.dart';

import 'package:weather/presentation/widgets/background.dart';
import 'package:weather/utils/app_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          const ScreenBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppWidgetsSetting.horisontalLargePadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppWidgetsSetting.verticalLargePadding,
                ),
                Text(
                  AppText.weatherIn,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: AppWidgetsSetting.verticalMediumPadding,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: AppText.enterName,
                  ),
                ),
                const SizedBox(
                  height: AppWidgetsSetting.verticalMediumPadding,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/today');
                  },
                  child: const Text(AppText.confirm),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
