import 'package:flutter/material.dart';
import 'package:weather/presentation/detailed_weather.dart';
import 'package:weather/presentation/search_screen.dart';
import 'package:weather/presentation/today_weather_screen.dart';
import 'package:weather/utils/app_constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Here are the general widget settings, which allows us to reuse the same UI elements
      /// and increase the readability of the code, since we do not litter the layout code with repeated values.

      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.appBarBackground,
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.elements,
          thickness: AppWidgetsSetting.dividerThickness,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppWidgetsSetting.borderRadius),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.elements),
            minimumSize: MaterialStateProperty.all<Size>(
              const Size.fromHeight(AppWidgetsSetting.buttonHeight),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppWidgetsSetting.borderRadius),
            borderSide: const BorderSide(
              color: AppColors.elements,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppWidgetsSetting.borderRadius),
            borderSide: const BorderSide(
              color: AppColors.elements,
            ),
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: AppWidgetsSetting.headlineText,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            fontSize: AppWidgetsSetting.regularText,
            fontWeight: FontWeight.w400,
          ),
          button: TextStyle(
            fontSize: AppWidgetsSetting.buttonText,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SearchScreen(),
        '/today': (context) => const TodayWeatherScreen(),
        '/detailed': (context) => const DetailedWeatherScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
