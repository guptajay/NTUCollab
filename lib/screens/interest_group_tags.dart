import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/widgets/app_bar.dart';

class Tags {
  final int id;
  final String name;

  Tags({
    this.id,
    this.name,
  });
}

class InterestGroupTags extends StatefulWidget {
  @override
  _InterestGroupTagsState createState() => _InterestGroupTagsState();
}

class _InterestGroupTagsState extends State<InterestGroupTags> {

  static List<Tags> _modules = [
    Tags(id: 1, name: "Mathematics"),
    Tags(id: 2, name: "Physics"),
    Tags(id: 3, name: "Machine Learning"),
    Tags(id: 4, name: "Software Engineering"),
    Tags(id: 5, name: "Astronomy"),
    Tags(id: 6, name: "Accounting"),
    Tags(id: 7, name: "Data Science"),
  ];
  final _items = _modules
      .map((interest) => MultiSelectItem<Tags>(interest, interest.name))
      .toList();
  List<Tags> _selectedmodules2 = [];

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
                  image: AssetImage("assets/images/interest.png"),
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
                        listType: MultiSelectListType.CHIP,
                        searchable: true,
                        buttonText: Text("Interest Tags"),
                        title: Text("Interests"),
                        items: _items,
                        onConfirm: (values) {
                          _selectedmodules2 = values;
                        },
                        chipDisplay: MultiSelectChipDisplay(
                          onTap: (value) {
                            setState(() {
                              _selectedmodules2.remove(value);
                            });
                          },
                        ),
                        onSelectionChanged: (values){
                          print(values);
                        },
                      ),
                      _selectedmodules2 == null || _selectedmodules2.isEmpty
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
