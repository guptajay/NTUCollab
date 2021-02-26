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
      appBar: AppbarWidget.getAppBar("Interest Groups", Colors.blue[400], Colors.white),
      body: SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(height: 10,),
        Text("My Groups",
            style:
            TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        SizedBox(height: 10,),
        GroupCard.getGroupCard("Debating", "7", context,1),
        GroupCard.getGroupCard("Hiking", "8", context,2),
        GroupCard.getGroupCard("Trekking", "7", context,3),
        GroupCard.getGroupCard("Cycling", "7", context,2),
        GroupCard.getGroupCard("Hackathons", "7", context,1),
      ]
      ),
    ));
  }
}