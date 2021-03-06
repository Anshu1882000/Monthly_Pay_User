import 'package:flutter/material.dart';

import '../models/TransactionModel.dart';

class TransactionDelegate extends SearchDelegate<CustomerTransaction> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return ThemeData(
      primaryColor: theme.primaryColor,
      accentColor: theme.accentColor,
      textTheme: TextTheme(
        headline6: theme.textTheme.headline6.copyWith(color: Colors.white),
      ),
      appBarTheme: AppBarTheme(elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: theme.textTheme.headline6.copyWith(color: Colors.white),
      ),
    );
  }
}
