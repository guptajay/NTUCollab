import 'package:flutter/material.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:ntucollab/widgets/group_card.dart';

class AllClubsPage extends StatefulWidget {
  @override
  _AllClubsPageState createState() => _AllClubsPageState();
}

class _AllClubsPageState extends State<AllClubsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget.getAppBar("All Clubs", Colors.blue[400], Colors.white),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: 10,),
            Text("Sem 2, AY2020-21",
                style:
                TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            GroupCard.getGroupCard("CZ1011 Maths 1", "", 25, context,1, "More", "Algebra, Calculus"),
            GroupCard.getGroupCard("CZ3004 MDP", "", 25,context,2, "More", "Android, Arduino, Raspberry Pi"),
            GroupCard.getGroupCard("CZ3005 AI", "", 25,context,3, "More", "Calculus, Logical Inference"),
            GroupCard.getGroupCard("ET0001 Innovation", "", 25,context,2, "More", "Entrepreneurship, Online"),
            GroupCard.getGroupCard("CZ3004 MDP", "", 25,context,2, "More", "Android, Arduino, Raspberry Pi"),
            GroupCard.getGroupCard("CZ3005 AI", "", 25,context,3, "More", "Calculus, Logical Inference"),
            GroupCard.getGroupCard("ET0001 Innovation", "", 25,context,2, "More", "Entrepreneurship, Online"),
          ]
          ),
        ));
  }
}