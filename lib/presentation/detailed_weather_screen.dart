import 'package:flutter/material.dart';
import 'package:weather/presentation/today_weather_screen.dart';
import 'package:weather/utils/app_constants.dart';

class DetailedWeatherScreen extends StatelessWidget {
  const DetailedWeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppWidgetsSetting.horisontalMediumPadding,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: AppWidgetsSetting.verticalMediumPadding,
              ),
              Text(
                'City',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: AppWidgetsSetting.verticalMediumPadding,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TODO get date and city

                      Text(
                        'Date',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: AppWidgetsSetting.verticalSmallPadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          WeatherCharacteristics(),
                          // TODO get values
                          WeatherValues(),
                        ],
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: AppWidgetsSetting
                    .itemsInList, // const value as we always show 3 items
              ),
            ],
          ),
        ),
      ),
    );
  }
}
