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
            GroupCard.getGroupCard("Open Source Society", "", 25, context,0, "More", "Coding, Learning, Collaboration", "club"),
            GroupCard.getGroupCard("NTU Red Cross", "", 25,context,1, "More", "Health, Wellbeing, Community", "club"),
            GroupCard.getGroupCard("NTU Toastmasters", "", 25,context,3, "More", "Sports, Focus", "club"),
            GroupCard.getGroupCard("NTU Archery Club", "", 25,context,2, "More", "Public Speaking, Confidence", "club"),
            GroupCard.getGroupCard("NTU SCSE Club", "", 25,context,4, "More", "Management, Academics", "club"),
            GroupCard.getGroupCard("NTU Earthlink", "", 25,context,3, "More", "Environment, Elections", "club"),
            GroupCard.getGroupCard("Hall 8 JCRC", "", 25,context,2, "More", "NTU Halls, Dance, D&D", "club"),
          ]
          ),
        ));
  }
}