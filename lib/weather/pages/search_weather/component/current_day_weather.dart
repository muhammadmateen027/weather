import 'package:flutter/material.dart';
import 'package:weather/generated/assets.gen.dart';
import 'package:weather/weather/weather.dart';

class CurrentDayWeather extends StatelessWidget {
  const CurrentDayWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Raining',
            textAlign: TextAlign.left,
            style: theme.textTheme.headline6!.copyWith(
              color: theme.colorScheme.surface,
            ),
          ),
          Center(
            child: Image.asset(
              Assets.heavyRain.path,
            ),
          ),
          const TemperatureView(),
          const CustomTextView(label: 'Humidity', value: '67%'),
          const CustomTextView(label: 'Pressure', value: '1009 hPa'),
          const CustomTextView(label: 'Wind', value: '23 km/h'),
        ],
      ),
    );
  }
}
