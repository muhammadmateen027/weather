import 'package:flutter/material.dart';
import 'package:weather/weather/weather.dart';

class SearchWeatherForm extends StatelessWidget {
  const SearchWeatherForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshLocalGallery,
      child: ListView(
        children: const [
          SizedBox(height: 8),
          SearchView(),
          SizedBox(height: 12),
          Locality(),
          SizedBox(height: 12),
          CurrentDayWeather(),
          WeekWeatherView(),
        ],
      ),
    );
  }

  Future _refreshLocalGallery() async {}
}
