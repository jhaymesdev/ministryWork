import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String title;
  String description;
  String clientName;
  IconData clientIconRating;
  Function starRatingUpGrade;
  CustomContainer(this.title, this.description,
    this.clientName, this.clientIconRating,this.starRatingUpGrade);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,width: 300,color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Title: $title"),
          Text(description),
              ListTile(
                  title: Text("Client Name $clientName"),
                  subtitle: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          clientIconRating,
                        ),
                        onPressed: starRatingUpGrade,
                      ),
                      IconButton(
                        icon: Icon(
                          clientIconRating,

                        ),
                        onPressed: starRatingUpGrade,
                      ),
                      IconButton(
                        icon: Icon(
                          clientIconRating,
                        ),
                        onPressed: starRatingUpGrade,
                      ),
                      IconButton(
                        icon: Icon(
                          clientIconRating,

                        ),
                        onPressed: starRatingUpGrade,
                      ),
                      IconButton(
                        icon: Icon(
                          clientIconRating,
                        ),
                        onPressed: starRatingUpGrade,
                      ),
                    ],
                  )
              )
        ],
      ),
    );
  }
}
