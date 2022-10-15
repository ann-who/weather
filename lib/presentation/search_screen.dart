import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/business_logic/city_search/bloc_for_city_search.dart';
import 'package:weather/presentation/widgets/background.dart';
import 'package:weather/utils/app_constants.dart';

/// Screen for searching city's coordinates based on its name.
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: const [
          ScreenBackground(),
          SearchPage(),
        ],
      ),
    );
  }
}

/// Screen content for searching city
class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Padding(
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
            decoration: const InputDecoration(hintText: AppText.enterName),
            controller: controller,
            onChanged: (value) {
              context.read<CitySearchBloc>().add(CityNameChanged(value));
            },
          ),
          const SizedBox(
            height: AppWidgetsSetting.verticalMediumPadding,
          ),
          BlocBuilder<CitySearchBloc, CitySearchState>(
            builder: (context, state) {
              return ElevatedButton(
                /// Disable/enable button based on user input.
                /// If it's too short or we can't find the data, button rests disabled.
                onPressed: !context.read<CitySearchBloc>().state.canFetchWeather
                    ? null
                    : () {
                        Navigator.pushNamed(
                          context,
                          '/today',
                          arguments:
                              context.read<CitySearchBloc>().state.selectedCity,
                        );

                        // Clean up search UI to its initial state
                        controller.clear();
                        FocusScope.of(context).unfocus();
                        context
                            .read<CitySearchBloc>()
                            .add(const CityNameChanged(''));
                      },
                style: ButtonStyle(
                  /// Change button color to match its enabled/disabled state so
                  /// user knows when it's ready for tapping
                  backgroundColor: controller.text.length <
                              AppWidgetsSetting.minCharacters ||
                          context
                              .read<CitySearchBloc>()
                              .state
                              .citiesList
                              .isEmpty
                      ? MaterialStateProperty.all<Color>(
                          AppColors.disableElements)
                      : MaterialStateProperty.all<Color>(AppColors.elements),
                ),
                child: context.read<CitySearchBloc>().state.isLoading
                    ? const CircularProgressIndicator()
                    : const Text(AppText.confirm),
              );
            },
          ),
        ],
      ),
    );
  }
}
