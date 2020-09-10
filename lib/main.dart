import 'dart:ffi';


import 'package:demoministry/widgets/listtile.dart';
import 'package:demoministry/widgets/usersCard.dart';
import 'package:demoministry/writer.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Appbar"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                showSearch(context: context, delegate: searchWriter());
              },
              iconSize: 30)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: SweepGradient(
                        colors: <Color>[Colors.green, Colors.greenAccent],
                        center: Alignment.bottomCenter)),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("lib/assets/jordan.jpeg"),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Jhaymes",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                )),
            CustomListTile("Profile", Icons.person, () {}),
            CustomListTile("Notifications", Icons.notifications_active, () {}),
            CustomListTile("Setting", Icons.settings, () {}),
            CustomListTile("Logout", Icons.lock, () {}),
          ],
        ),
      ),
    );
  }
}

class searchWriter extends SearchDelegate<Writer> {
  List<Writer> writers = [
    Writer("Jhaymes", "lib/assets/jordan.jpeg", "Mobile Developer","jhaymes@gmail.com"),
    Writer("Victoria", "lib/assets/jordan.jpeg", "FrontEnd","victoria@gmail.com"),
    Writer("Favour", "lib/assets/jordan.jpeg", "BackEnd","favour@gmail.com"),
    Writer("Humble", "lib/assets/jordan.jpeg", "FullStalk","favour@gmail.com"),
    Writer("Precious", "lib/assets/jordan.jpeg", "DevOps","precious@gmail.com"),
    Writer("Jessica", "lib/assets/jordan.jpeg", "Designer","jessica@gmail.com"),
    Writer("Angela", "lib/assets/jordan.jpeg", "Technical Writer","angela@gmail.com"),
  ];
  List<Writer> recentWriters = [
    Writer("Jhaymes", "lib/assets/jordan.jpeg", "Mobile Developer","jhaymes@gmail.com"),
    Writer("Simon", "lib/assets/jordan.jpeg", "FrontEnd","name@gmail.com"),
    Writer("Favour", "lib/assets/jordan.jpeg", "BackEnd","favour@gmail.com"),
    Writer("Humble", "lib/assets/jordan.jpeg", "FullStalk","humble@gmail.com"),
    Writer("Precious", "lib/assets/jordan.jpeg", "DevOps","precious@gmail.com"),
    Writer("Jessica", "lib/assets/jordan.jpeg", "Designer","jessica@gmail.com"),
    Writer("Angela", "lib/assets/jordan.jpeg", "Technical Writer","angela@gmail.com"),
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.close), onPressed: (){
      query = "";
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon:Icon(Icons.arrow_back), onPressed: (){
      close(context, null);
    });
  }
  @override
  Widget buildResults(BuildContext context) {
    final suggestions = writers;
    for(int i = 0; i<writers.length;i++) {
      return UserCard(writers[i].name, writers[i].image, writers[i].email);
    }
    query = " ";
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty? recentWriters: writers.where((element) => element.stalk.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(suggestions[index].image),
          radius: 25,
        ),
        title: Text(suggestions[index].name),
        subtitle: Text(suggestions[index].stalk),
        onTap: (){
          showResults(context);
        },
      );
    },
    itemCount: suggestions.length,
    );
  }
}
