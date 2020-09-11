import 'package:demoministry/widgets/UserCard.dart';

import '../models/containerModels.dart';
import 'package:flutter/material.dart';

import 'myContainer.dart';

class FinalStuff extends StatefulWidget {
  @override
  _FinalStuffState createState() => _FinalStuffState();
}

class _FinalStuffState extends State<FinalStuff> {
  final PageController controllers = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          UserCard(),
          Expanded(
            child: PageView.builder(itemBuilder: (context,index){
              return MyContainer(index);
            },
              itemCount: infoList.length,
              controller: controllers,
              // scrollDirection: Axis.horizontal,
            ),
          ),
          //Text("this is the text"),
        ],
      ),
    );
  }
}
