import 'package:flutter/material.dart';
import 'package:ntucollab/clipper/wave_clipper.dart';
import 'package:ntucollab/main.dart';
import 'package:ntucollab/widgets/nav_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  setPage() {
    setState(() {
      pageController.jumpToPage(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Material(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Theme.of(context).primaryColor.withAlpha(150),
                        Theme.of(context).primaryColor,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CustomNavItem(
                      setPage: setPage, icon: Icons.book, id: 0),
                  Container(),
                  CustomNavItem(setPage: setPage, icon: Icons.sports_basketball_sharp, id: 1),
                  Container(),
                  CustomNavItem(
                      setPage: setPage, icon: Icons.group, id: 2),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text(
                    'Modules',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(),
                  const Text(
                    'Clubs',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(),
                  const Text(
                    'Groups',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}