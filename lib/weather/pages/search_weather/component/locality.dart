import 'package:flutter/material.dart';

class Locality extends StatelessWidget {
  const Locality({
    Key? key,
    this.city = 'Lahore',
    this.country = 'Pakistan',
  }) : super(key: key);

  final String city;
  final String country;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      '$city, $country'.toUpperCase(),
      textAlign: TextAlign.center,
      style: theme.textTheme.headline6,
    );
  }
}
