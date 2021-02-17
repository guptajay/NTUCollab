import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/screens/interest_group_tags.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:ntucollab/models/Tags.dart';

class ClubTags extends StatefulWidget {
  @override
  _ClubTagsState createState() => _ClubTagsState();
}

class _ClubTagsState extends State<ClubTags> {

  static List<Tags> _clubs = [
    Tags(id: 1, name: "Debating Society"),
    Tags(id: 2, name: "BlockChain"),
    Tags(id: 3, name: "Open Source Society"),
    Tags(id: 4, name: "Toastmaster"),
    Tags(id: 5, name: "Red Cross"),
    Tags(id: 6, name: "Friends of Children"),
    Tags(id: 7, name: "SCSE Club"),
  ];
  final _items = _clubs
      .map((clubs) => MultiSelectItem<Tags>(clubs, clubs.name))
      .toList();
  List<Tags> _selectedClubs = [];

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
                  "Clubs",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage("assets/images/clubs.jpeg"),
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
                        initialValue: _clubs,
                        listType: MultiSelectListType.CHIP,
                        searchable: true,
                        buttonText: Text("Club Tags"),
                        title: Text("Clubs"),
                        items: _items,
                        onConfirm: (values) {
                          _selectedClubs = values;
                        },
                        chipDisplay: MultiSelectChipDisplay(
                          onTap: (value) {
                            setState(() {
                              _selectedClubs.remove(value);
                            });
                          },
                        ),
                        onSelectionChanged: (values){
                          print(values);
                        },
                      ),
                      _selectedClubs == null || _selectedClubs.isEmpty
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
                Container(
                  width: 110,
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InterestGroupTags()),
                        );
                      },
                      child: Row(
                        children: <Widget>[
                          Text('Next',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              )),
                          Icon(Icons.arrow_forward, color: Colors.black)
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
