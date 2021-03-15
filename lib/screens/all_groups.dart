import 'package:flutter/material.dart';
import 'package:ntucollab/widgets/app_bar.dart';
 import 'package:ntucollab/widgets/group_card.dart';

class AllGroupPage extends StatefulWidget {
  @override
  _AllGroupPageState createState() => _AllGroupPageState();
}

class _AllGroupPageState extends State<AllGroupPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget.getAppBar(context,"Interest Groups", Colors.blue[400], Colors.white),
      body: SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(height: 10,),
        Text("My Groups",
            style:
            TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        SizedBox(height: 10,),
        GroupCard.getGroupCard("Debating", "7", 40, context,0, "Enter", "Number of Members: ", "group"),
        GroupCard.getGroupCard("Hiking", "8",40, context,1, "Enter", "Number of Members: ", "group"),
        GroupCard.getGroupCard("Trekking", "7",40, context,1, "Enter", "Number of Members: ", "group"),
        GroupCard.getGroupCard("Cycling", "7", 40,context,0, "Enter", "Number of Members: ", "group"),
        GroupCard.getGroupCard("Hackathon", "7",40, context,2, "Enter", "Number of Members: ", "group"),
      ]
      ),
    ));
  }
}