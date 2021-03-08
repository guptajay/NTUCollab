import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ntucollab/screens/create_group.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:ntucollab/models/recommend_data.dart';
import 'all_groups.dart';
import 'module_detail.dart';

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget.getAppBar("Interest Groups", Colors.blue[400], Colors.white),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 15),
                const Text("Recommended Groups",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 15),
                Container(
                  height: 270,
                  padding: const EdgeInsets.only(left: 32),
                  child: Swiper(
                    itemCount: recommendGroups.length,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                    layout: SwiperLayout.STACK,
                    pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                          activeSize: 20, space: 8, color: Colors.blueGrey),
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(pageBuilder: (context, a, b) {
                                return GroupDetailsPage(
                                    name: recommendGroups[index].name,
                                    offeredBy: recommendGroups[index].offeredBy,
                                    year: recommendGroups[index].year,
                                    details: recommendGroups[index].details,
                                    modulesTagList: recommendGroups[index].tags,
                                    comments: recommendGroups[index].comments,
                                    rating1: recommendGroups[index].rating1,
                                    ratingValue1:
                                    recommendGroups[index].ratingValue1,
                                    rating2: recommendGroups[index].rating2,
                                    ratingValue2:
                                    recommendGroups[index].ratingValue2,
                                    rating3: recommendGroups[index].rating3,
                                    ratingValue3:
                                    recommendGroups[index].ratingValue3);
                              }),
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  // Image.asset(recommendData[index].iconImage, height: 100,),
                                  Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            recommendGroups[index].name,
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: const Color(0xff47455f),
                                              fontWeight: FontWeight.w900,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            recommendGroups[index].tagText,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height: 32),
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                'Know more',
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 18,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 24,
                                bottom: 60,
                                child: Text(
                                  recommendGroups[index].position.toString(),
                                  style: TextStyle(
                                    fontSize: 200,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.08),
                                    fontWeight: FontWeight.w900,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ));
                    },
                  ),
                ),
                SizedBox(height: 30,),
                OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllGroupPage()),
                    );
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 0,
                  borderSide: BorderSide(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Navigate to my Groups',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[600],
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.blue[600])
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewGroupPage()),
                    );
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  highlightElevation: 0,
                  borderSide: BorderSide(color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Create New Group',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[600],
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.blue[600])
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}