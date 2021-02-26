import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ntucollab/screens/group_detail.dart';
import 'package:ntucollab/models/RecommenderData.dart';

class GroupCard {
  static getGroupCard(
      String name, String numberOfUsers, BuildContext context, int index) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 130,
        width: double.maxFinite,
        child: Card(
            elevation: 5,
            color: Colors.blue[100],
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(name,
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                              color: Color.fromRGBO(0, 160, 227, 1))),
                      child: Text(
                        'Enter',
                        style: TextStyle(fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroupDetailsPage(
                                  name: recommendData[index].name,
                                  offeredBy: recommendData[index].offeredBy,
                                  year: recommendData[index].year,
                                  details: recommendData[index].details,
                                  modulesTagList: recommendData[index].tags,
                                  comments: recommendData[index].comments,
                                  rating1: recommendData[index].rating1,
                                  ratingValue1:
                                      recommendData[index].ratingValue1,
                                  rating2: recommendData[index].rating2,
                                  ratingValue2:
                                      recommendData[index].ratingValue2,
                                  rating3: recommendData[index].rating3,
                                  ratingValue3:
                                      recommendData[index].ratingValue3)),
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 7),
              Row(children: <Widget>[
                Text(
                  "Number of Members: ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  numberOfUsers,
                  style: TextStyle(fontSize: 25),
                )
              ])
            ])));
  }
}
