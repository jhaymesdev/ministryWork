import '../models/containerModels.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyContainer extends StatefulWidget {
  final int index;
  MyContainer(this.index);

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  Icon orignalStar = Icon(Icons.star);
  Icon starwithborder = Icon(Icons.star_border);
 void turnToAStar(){
   setState(() {
     starwithborder = orignalStar;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Hexcolor("#5C6BC0"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(infoList[widget.index].title,textAlign: TextAlign.left,),
          SizedBox(height: 10,),
          Text(infoList[widget.index].description, textAlign: TextAlign.center,),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.thumb_up), onPressed: (){}),
                  Text("1"),
                  IconButton(icon: Icon(Icons.thumb_up), onPressed: (){}),
                  Text("2"),
                ],
              ),
              Text("Clients Rating"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  IconButton(icon: starwithborder, onPressed: turnToAStar),
                  IconButton(icon: starwithborder, onPressed: turnToAStar),
                  IconButton(icon: starwithborder, onPressed: turnToAStar),
                  IconButton(icon: starwithborder, onPressed: turnToAStar),
                  IconButton(icon: starwithborder, onPressed: turnToAStar),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
