import 'package:flutter/material.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:ntucollab/widgets/group_card.dart';

class AllModulesPage extends StatefulWidget {
  @override
  _AllModulesPageState createState() => _AllModulesPageState();
}

class _AllModulesPageState extends State<AllModulesPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget.getAppBar(context,"All Modules", Colors.blue[400], Colors.white),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height: 10,),
            Text("Sem 2, AY2020-21",
                style:
                TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 10,),
            GroupCard.getGroupCard("CZ4011 ML", "", 21, context, 0, "More", "Applied Maths, Project", "module"),
            GroupCard.getGroupCard("CZ3006 Networking", "", 21,context, 2, "More", "Network, Algebra", "module"),
            GroupCard.getGroupCard("CZ3005 AI", "", 21,context, 1, "More", "Calculus, Logical Inference", "module"),
            GroupCard.getGroupCard("ET0001 Innovation", "", 21,context, 4, "More", "Entrepreneurship, Innovation", "module"),
            GroupCard.getGroupCard("CZ2002 Software Eng.", "", 21,context, 3, "More", "Android, Arduino, Raspberry Pi", "module"),
          ]
          ),
        ));
  }
}