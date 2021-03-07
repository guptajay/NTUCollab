import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:ntucollab/models/Tags.dart';
import 'package:ntucollab/screens/home.dart';
import 'package:ntucollab/screens/all_groups.dart';

class InterestGroupTags extends StatefulWidget {
  @override
  _InterestGroupTagsState createState() => _InterestGroupTagsState();
}

class _InterestGroupTagsState extends State<InterestGroupTags> {

  static List<Tags> _interests = [
    Tags(id: 1, name: "Running"),
    Tags(id: 2, name: "Tennis"),
    Tags(id: 3, name: "Hackathons"),
    Tags(id: 4, name: "Google Workshops"),
    Tags(id: 5, name: "Badminton"),
    Tags(id: 6, name: "Trekking"),
    Tags(id: 7, name: "Debating"),
  ];
  final _items = _interests
      .map((interest) => MultiSelectItem<Tags>(interest, interest.name))
      .toList();
  List<Tags> _selectedInterests = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget.getAppBar("Select Tags", Colors.blue[400], Colors.white),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Flexible(
            child: Column(
              children: <Widget>[
                Text(
                  "Interests",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage("assets/images/groups.jpeg"),
                  height: 200.0,
                ),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.4),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      MultiSelectBottomSheetField(
                        initialChildSize: 0.4,
                        initialValue: _interests,
                        listType: MultiSelectListType.CHIP,
                        searchable: true,
                        buttonText: Text("Interest Tags"),
                        title: Text("Interests"),
                        items: _items,
                        onConfirm: (values) {
                          _selectedInterests = values;
                        },
                        chipDisplay: MultiSelectChipDisplay(
                          onTap: (value) {
                            setState(() {
                              _selectedInterests.remove(value);
                            });
                          },
                        ),
                        onSelectionChanged: (values){
                          print(values);
                        },
                      ),
                      _selectedInterests == null || _selectedInterests.isEmpty
                          ? Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "None selected",
                            style: TextStyle(color: Colors.black54),
                          ))
                          : Container(),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                OutlineButton(
                  splashColor: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
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
                          'Next',
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
