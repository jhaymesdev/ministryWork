import 'package:flutter/material.dart';
import '../models/containerModels.dart';
class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color:  Colors.deepOrangeAccent,
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color:  Colors.deepOrangeAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage:AssetImage("lib/assets/jordan.jpeg"),
                ),
                SizedBox(height: 10,),
                Text("Name"),
                Text("Summary"),
                Text("Technical Writer"),
                Text("Twitter"),
                Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_half),
                    Icon(Icons.star_border),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
