import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/generated/assets.gen.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(Assets.error),
        const SizedBox(height: 20),
        Text(
          'Something went wrong...',
          style: theme.textTheme.headline6!.copyWith(
            color: theme.errorColor,
          ),
        ),
        Text(error.replaceAll('Exception:', '')),
      ],
    );
  }
}
