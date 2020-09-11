import 'dart:async';

import 'package:demoministry/widgets/UserCard.dart';

import '../models/containerModels.dart';
import 'package:flutter/material.dart';

import 'myContainer.dart';

class FinalStuff extends StatefulWidget {
  @override
  _FinalStuffState createState() => _FinalStuffState();
}

class _FinalStuffState extends State<FinalStuff> {
  int currentPage = 0;
  final PageController controllers = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 4), (timer) {
      if(currentPage < infoList.length-1){
        currentPage++;
      }else{
        currentPage=0;
      }
      controllers.animateToPage(currentPage, duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllers.dispose();
  }
  void nameOfFunction(int index){
    setState(() {
      currentPage = index;
    });
  }
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
              onPageChanged: nameOfFunction,
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
