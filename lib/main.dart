import 'package:demoministry/models/listOfWriters.dart';
import 'package:demoministry/widgets/finalStuff.dart';
import './widgets/myContainer.dart';
import 'package:flutter/material.dart';
import 'models/containerModels.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Move the ministry forward',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final PageController controllers = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed:() {
            showSearch(context:context, delegate: searchData());})
        ],
      ),
      body: Text("Welcome"),
    );
  }
}
class searchData extends SearchDelegate<WritersInfo>{
  @override
  List<Widget> buildActions(BuildContext context) {
   return [IconButton(icon: Icon(Icons.clear), onPressed: (){
      query.isEmpty;
   }),];
  }

  @override
  Widget buildLeading(BuildContext context) {
   IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
     close(context, null);
   });
  }

  @override
  Widget buildResults(BuildContext context) {
    return FinalStuff();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return ListTile(
        title: Text(listOfWriters[index].name),
        subtitle: Text(listOfWriters[index].email),
        onTap: (){
          showResults(context);
        },
      );
    });
  }

}