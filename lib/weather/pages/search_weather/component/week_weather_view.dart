import 'package:flutter/material.dart';
import 'package:weather/generated/assets.gen.dart';

class WeekWeatherView extends StatelessWidget {
  const WeekWeatherView({Key? key, this.week = const [1, 2, 3, 4, 5, 6, 7]})
      : super(key: key);

  final List<int> week;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final weatherType = [
      Assets.clear.path,
      Assets.hail.path,
      Assets.heavyCloud.path,
      Assets.heavyRain.path,
      Assets.lightCloud.path,
      Assets.lightRain.path,
      Assets.showers.path,
      Assets.sleet.path,
      Assets.snow.path,
      Assets.thunderstorm.path,
    ];

    return SizedBox(
      height: 200,
      width: double.maxFinite,
      child: ListView.builder(
        shrinkWrap: true,
        clipBehavior: Clip.none,
        itemCount: weatherType.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return _WeatherItem(path: weatherType[index]);
        },
      ),
    );
  }
}

class _WeatherItem extends StatelessWidget {
  const _WeatherItem({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: theme.colorScheme.onBackground.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Friday'.substring(0, 3),
                    style: theme.textTheme.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '10º / 20',
                    style: theme.textTheme.bodyText1,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Positioned(
              top: -20,
              left: 15,
              child: SizedBox(
                width: 90,
                height: 70,
                child: Image(
                  image: AssetImage(path),
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
