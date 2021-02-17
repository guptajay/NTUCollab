import 'package:flutter/material.dart';
import 'package:ntucollab/main.dart';
import 'package:ntucollab/screens/clubs.dart';
import 'package:ntucollab/screens/groups.dart';
import 'package:ntucollab/screens/modules.dart';
import 'package:ntucollab/widgets/bottom_nav_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          Modules(),
          Clubs(),
          Groups(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}