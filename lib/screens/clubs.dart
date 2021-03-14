import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ntucollab/screens/all_clubs.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:ntucollab/models/recommend_data.dart';
import 'club_details.dart';

class Clubs extends StatelessWidget {
  int generateRandomNumber() {
    var random = new Random();
    var num = random.nextInt(3);
    return num;
  }

  @override
  Widget build(BuildContext context) {

    List<RecommenderData> data;
    int dataNum = generateRandomNumber();

    if(dataNum == 0)
      data = recommendClubs;
    else if (dataNum == 1)
      data = recommendClubs_two;
    else
      data = recommendClubs_three;

    return Scaffold(
      appBar: AppbarWidget.getAppBar(context,"Clubs", Colors.blue[400], Colors.white),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 15),
                const Text("Recommended Clubs",
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
                    itemCount: data.length,
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
                                return ClubDetailsPage(
                                    name: data[index].name,
                                    details: data[index].details,
                                    modulesTagList: data[index].tags,
                                    comments: data[index].comments,
                                    rating1: data[index].rating1,
                                    ratingValue1:
                                    data[index].ratingValue1,
                                    rating2: data[index].rating2,
                                    ratingValue2:
                                    data[index].ratingValue2,
                                    rating3: data[index].rating3,
                                    ratingValue3:
                                    data[index].ratingValue3);
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
                                            data[index].name,
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: const Color(0xff47455f),
                                              fontWeight: FontWeight.w900,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            data[index].tagText,
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
                                  data[index].position.toString(),
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

                SizedBox(height: 15,),
                OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllClubsPage()),
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
                          'All Clubs',
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
                SizedBox(height: 5,),
                buildInfoCard()

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard() => Card(
    margin: EdgeInsets.all(20),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[400], Colors.blue[600]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Information',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Due to COVID-19 precautionary measures, all activities with more than 50 students are to be held online.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );

}