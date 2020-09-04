import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  List Names = ["Andrew", "Paulinus", "Beatrice",
    "Catherine", "Doyin", "Ruth"];
  List recentNames = [
    "Andrew",
    "Paulinus",
    "Beatrice",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = "";
    })];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
    // try using the normal backArrow I con here to see
  }
  @override
  Widget buildResults(BuildContext context) {}
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = query.isEmpty ? recentNames : Names.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(

          title: Text(suggestion[index]),
          leading: Icon(Icons.computer),
        );
      },
      itemCount: suggestion.length,
    );
  }
}
