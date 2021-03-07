import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:rating_dialog/rating_dialog.dart';

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}

void show(context) {
  showDialog(
      context: context,
      barrierDismissible: true, // set to false if you want to force a rating
      builder: (context) {
        return Scaffold(
          body: Container(
            child: Column(
              children: [
                RatingDialog(
                  icon: const Icon(
                    Icons.star,
                    size: 5,
                    color: Colors.blue,
                  ), // set your own image/icon widget
                  title: "Please rate Demand out of 5",
                  description: "Tap a star to give your rating.",
                  submitButton: "SUBMIT",
                  accentColor: Colors.blue, // optional
                  onSubmitPressed: (int rating) {
//              print("onSubmitPressed: rating = $rating");
                  },
                ),
                RatingDialog(
                  icon: const Icon(
                    Icons.star,
                    size: 5,
                    color: Colors.blue,
                  ), // set your own image/icon widget
                  title: "Please rate Difficulty out of 5",
                  description: "Tap a star to give your rating.",
                  submitButton: "SUBMIT",
                  accentColor: Colors.blue, // optional
                  onSubmitPressed: (int rating) {
//              print("onSubmitPressed: rating = $rating");
                  },
                ),
                RatingDialog(
                  icon: const Icon(
                    Icons.star,
                    size: 5,
                    color: Colors.blue,
                  ), // set your own image/icon widget
                  title: "Please rate Time out of 5",
                  description: "Tap a star to give your rating.",
                  submitButton: "SUBMIT",
                  accentColor: Colors.blue, // optional
                  onSubmitPressed: (int rating) {
//              print("onSubmitPressed: rating = $rating");
                  },
                ),
              ],
            ),
          ),
        );
      });
}

class ModuleDetailsCard {
  static getModuleDetailsCard(
    BuildContext context,
    IconData icon,
    List _items,
    String course,
    String school,
    String year,
    String details,
    String rating1,
    int ratingValue1,
    String rating2,
    int ratingValue2,
    String rating3,
    int ratingValue3,
  ) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Flexible(
            child: Column(children: <Widget>[
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(height: 15),
          Text(course,
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Offered By: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(school, style: TextStyle(fontSize: 20)),
              SizedBox(width: 50),
              Text("Year: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(year, style: TextStyle(fontSize: 20)),
            ],
          ),
          SizedBox(height: 15),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Details: ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Text(details, style: TextStyle(fontSize: 20)),
          SizedBox(height: 15),
          Row(children: [
            Text("Ratings:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ]),
          SizedBox(height: 10),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      IconTheme(
                        data: IconThemeData(
                          color: Colors.amber,
                          size: 20,
                        ),
                        child: StarDisplay(value: ratingValue1),
                      ),
                      SizedBox(width: 20),
                      Text(rating1, style: TextStyle(fontSize: 20))
                    ],
                  ),
                  Row(
                    children: [
//                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 18, 0),
                        child: IconTheme(
                          data: IconThemeData(
                            color: Colors.amber,
                            size: 20,
                          ),
                          child: StarDisplay(value: ratingValue2),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(rating2, style: TextStyle(fontSize: 20))
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 22),
                      IconTheme(
                        data: IconThemeData(
                          color: Colors.amber,
                          size: 20,
                        ),
                        child: StarDisplay(value: ratingValue3),
                      ),
                      SizedBox(width: 20),
                      Text(rating3, style: TextStyle(fontSize: 20))
                    ],
                  ),
                ],
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: RaisedButton(
                    onPressed: () {
                      show(context);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blue)),
                    color: Colors.blue[200],
                    child: Text(
                      "Rate",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ])
            ],
          ),
          SizedBox(height: 15),
          MultiSelectChipField(
            items: _items,
            title: Text("Tags",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            headerColor: Colors.blue.withOpacity(0.5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue[700], width: 1.8),
            ),
            selectedChipColor: Colors.blue.withOpacity(0.5),
            selectedTextStyle: TextStyle(color: Colors.blue[800]),
            onTap: (values) {
//              tags = values;
            },
          ),
        ])));
  }
}
