import 'package:flutter/material.dart';

class TemperatureView extends StatelessWidget {
  const TemperatureView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.arrow_upward,
              color: theme.errorColor,
            ),
            const SizedBox(width: 5),
            Text('100º', style: theme.textTheme.bodyText1)
          ],
        ),
        Center(
          child: Text(
            '80º',
            textAlign: TextAlign.center,
            style: theme.textTheme.headline2!.copyWith(
              color: theme.colorScheme.surface,
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.arrow_downward,
              color: theme.colorScheme.secondaryVariant,
            ),
            const SizedBox(width: 5),
            Text('100º', style: theme.textTheme.bodyText1)
          ],
        ),
      ],
    );
  }
}
