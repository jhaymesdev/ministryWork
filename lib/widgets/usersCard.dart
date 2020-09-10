import 'package:demoministry/widgets/customContainer.dart';
import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  String name;
  String image;
  String email;
  UserCard(this.name,this.image,this.email);
  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {

  IconData newIcon = Icons.star_border;
  void rate(IconData icon){
    setState(() {
      newIcon = Icons.star;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            shadowColor: Colors.blueGrey,
            //elevation: 120,
            child: Container(

                width: 380,
                height: 160,
                color: Colors.blue,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 25,
                      ),
                    ),
                    Text(""),
                    Text("this is the sport for email"),
                    Text("this is the the twitter spot")
                  ],
                )),
          ),
        ),
        Container(
          height: 400,
          width: 900,
          color: Colors.green,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CustomContainer("New to tech","Here the writer will flaunt a part of the article he wrote. "
                  "The part he thinks will make other people interested in hiring him",
                "Jhaymes",newIcon,  ()=> rate(Icons.star_border),
              )
            ],
          ),
        )
      ],
    );
  }
}

