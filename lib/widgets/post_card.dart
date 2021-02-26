import 'package:flutter/material.dart';

class PostCard {
  static getPostCard(
    String user,
    String content,
    String likeCount,
    String commentCount,

  ) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 120,
        width: double.maxFinite,
        child: Card(
            elevation: 5,
            color: Colors.grey[300],
            child: Column(children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(user,
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold))),
              Container(
                width: double.maxFinite,
                height: 50,
                child: Card(
                    elevation: 2,
                    color: Colors.grey[100],
                    child: Column(children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft, child: Text(content))
                    ])),
              ),
              SizedBox(height: 7),
              Row(children: <Widget>[
                Icon(Icons.favorite),
                Text(likeCount),
                SizedBox(width: 10),
                Icon(Icons.add_comment),
                Text(commentCount)
              ])
            ])));
  }
}
