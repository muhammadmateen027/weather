import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  const CustomTextView({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RichText(
      text: TextSpan(
        text: '$label: ',
        style: theme.textTheme.bodyText2,
        children: <TextSpan>[
          TextSpan(text: value, style: theme.textTheme.bodyText1),
        ],
      ),
    );
  }
}
