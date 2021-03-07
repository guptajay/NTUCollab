import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ntucollab/models/recommend_data.dart';
import 'package:ntucollab/screens/module_detail.dart';
import 'package:ntucollab/screens/home.dart';
import 'package:ntucollab/services/auth.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'login_page.dart';

class Modules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget.getAppBar("Modules", Colors.blue[400], Colors.white),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Stack(alignment: Alignment.center, children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/modules.jpeg"),
                    height: 200.0,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: const Text("Modules recommended for you",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ))),
                ]),
                SizedBox(height: 15),
                Container(
                  height: 270,
                  padding: const EdgeInsets.only(left: 32),
                  child: Swiper(
                    itemCount: recommendModule.length,
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
                                    name: recommendModule[index].name,
                                    offeredBy: recommendModule[index].offeredBy,
                                    year: recommendModule[index].year,
                                    details: recommendModule[index].details,
                                    modulesTagList: recommendModule[index].tags,
                                    comments: recommendModule[index].comments,
                                    rating1: recommendModule[index].rating1,
                                    ratingValue1:
                                        recommendModule[index].ratingValue1,
                                    rating2: recommendModule[index].rating2,
                                    ratingValue2:
                                        recommendModule[index].ratingValue2,
                                    rating3: recommendModule[index].rating3,
                                    ratingValue3:
                                        recommendModule[index].ratingValue3);
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
                                            recommendModule[index].name,
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: const Color(0xff47455f),
                                              fontWeight: FontWeight.w900,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            recommendModule[index].tagText,
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
                                  recommendModule[index].position.toString(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
