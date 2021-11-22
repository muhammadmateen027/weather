import 'package:flutter/material.dart';
import 'package:weather/weather/weather.dart';

class SearchWeatherPage extends StatefulWidget {
  const SearchWeatherPage({Key? key}) : super(key: key);

  @override
  _SearchWeatherPageState createState() => _SearchWeatherPageState();
}

class _SearchWeatherPageState extends State<SearchWeatherPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [theme.colorScheme.primary, theme.colorScheme.secondary],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child:const SearchWeatherForm(),
        ),
      ),
    );
  }
}
