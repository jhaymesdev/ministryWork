import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function function;
  CustomListTile(this.text,this.icon,this.function);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.green,
      onTap: (){},
      child: Container(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  SizedBox(width: 10,),
                  Text(text, style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),

    );
  }
}
