import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 52,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
        child: SizedBox(
          width: double.infinity,
          child: CupertinoTextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            placeholder: 'Search',
            onSubmitted: (str) {
              // context.read<SearchBloc>().add(SearchUser(str));
            },
            padding: const EdgeInsets.only(left: 12),
            placeholderStyle: theme.textTheme.bodyText2!.copyWith(
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
            suffix: IconButton(
              onPressed: () {
                // context.read<SearchBloc>().add(SearchUser(controller.text));
              },
              icon: Icon(Icons.search, color: theme.primaryColor),
            ),
            onChanged: (str) {},
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: theme.primaryColor),
              color: theme.colorScheme.surface,
            ),
          ),
        ),
      ),
    );
  }
}
