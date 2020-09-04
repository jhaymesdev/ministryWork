import 'package:demoministry/models/search_config.dart';
import 'package:demoministry/widgets/listtile.dart';
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
          IconButton(icon: Icon(Icons.search,),onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          },iconSize: 30)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
            decoration: BoxDecoration(
              gradient: SweepGradient(
                  colors: <Color>[Colors.green, Colors.greenAccent],
                center: Alignment.bottomCenter
              )
            ),
              child:
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/jordan.jpeg"),
                    radius: 50,
                    ),
                  SizedBox(height: 7,),
                  Text("Jhaymes", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              )
            ),
            CustomListTile("Profile", Icons.person,(){}),
            CustomListTile("Notifications", Icons.notifications_active ,(){}),
            CustomListTile("Setting", Icons.settings,(){}),
            CustomListTile("Logout", Icons.lock,(){}),
          ],
        ),
      ),
    );
  }
}
