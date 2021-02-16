import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/screens/interest_group_tags.dart';

class Tags {
  final int id;
  final String name;

  Tags({
    this.id,
    this.name,
  });
}

class ClubTags extends StatefulWidget {
  @override
  _ClubTagsState createState() => _ClubTagsState();
}

class _ClubTagsState extends State<ClubTags> {

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
      .map((animal) => MultiSelectItem<Tags>(animal, animal.name))
      .toList();
  List<Tags> _selectedmodules = [];
  List<Tags> _selectedmodules2 = [];
  List<Tags> _selectedmodules3 = [];
  List<Tags> _selectedmodules4 = [];
  List<Tags> _selectedmodules5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedmodules5 = _modules;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Tags"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Flexible(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Image(
                            image: AssetImage("assets/images/logo.png"),
                            height: 50.0)),
                    SizedBox(width: 30),
                    Text("Clubs",style: TextStyle(fontSize: 40),)
                  ],
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage("assets/images/clubs.jpeg"),
                  height: 160.0,
                ),
//                SizedBox(height: 40),
//                //################################################################################################
//                // Rounded blue MultiSelectDialogField
//                //################################################################################################
//                MultiSelectDialogField(
//                  items: _items,
//                  title: Text("Modules"),
//                  selectedColor: Colors.blue,
//                  decoration: BoxDecoration(
//                    color: Colors.blue.withOpacity(0.1),
//                    borderRadius: BorderRadius.all(Radius.circular(40)),
//                    border: Border.all(
//                      color: Colors.blue,
//                      width: 2,
//                    ),
//                  ),
//                  buttonIcon: Icon(
//                    Icons.book,
//                    color: Colors.blue,
//                  ),
//                  buttonText: Text(
//                    "Module Tags",
//                    style: TextStyle(
//                      color: Colors.blue[800],
//                      fontSize: 16,
//                    ),
//                  ),
//                  onConfirm: (results) {
//                    _selectedmodules = results;
//                  },
//                ),
                SizedBox(height: 50),
                //################################################################################################
                // This MultiSelectBottomSheetField has no decoration, but is instead wrapped in a Container that has
                // decoration applied. This allows the ChipDisplay to render inside the same Container.
                //################################################################################################
//                Container(
//                  decoration: BoxDecoration(
//                    color: Theme.of(context).primaryColor.withOpacity(.4),
//                    border: Border.all(
//                      color: Theme.of(context).primaryColor,
//                      width: 2,
//                    ),
//                  ),
//                  child: Column(
//                    children: <Widget>[
//                      MultiSelectBottomSheetField(
//                        initialChildSize: 0.4,
//                        listType: MultiSelectListType.CHIP,
//                        searchable: true,
//                        buttonText: Text("Module Tags"),
//                        title: Text("Modules"),
//                        items: _items,
//                        onConfirm: (values) {
//                          _selectedmodules2 = values;
//                        },
//                        chipDisplay: MultiSelectChipDisplay(
//                          onTap: (value) {
//                            setState(() {
//                              _selectedmodules2.remove(value);
//                            });
//                          },
//                        ),
//                      ),
//                      _selectedmodules2 == null || _selectedmodules2.isEmpty
//                          ? Container(
//                          padding: EdgeInsets.all(10),
//                          alignment: Alignment.centerLeft,
//                          child: Text(
//                            "None selected",
//                            style: TextStyle(color: Colors.black54),
//                          ))
//                          : Container(),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 40),
                //################################################################################################
                // MultiSelectBottomSheetField with validators
                //################################################################################################
                MultiSelectBottomSheetField<Tags>(
                  key: _multiSelectKey,
                  initialChildSize: 0.7,
                  maxChildSize: 0.95,
                  title: Text("Modules"),
                  buttonText: Text("Module Tags"),
                  items: _items,
                  searchable: true,
                  validator: (values) {
                    if (values == null || values.isEmpty) {
                      return "Required";
                    }
                    List<String> names = values.map((e) => e.name).toList();
                    if (names.contains("Frog")) {
                      return "Frogs are weird!";
                    }
                    return null;
                  },
                  onConfirm: (values) {
                    setState(() {
                      _selectedmodules3 = values;
                    });
                    _multiSelectKey.currentState.validate();
                  },
                  chipDisplay: MultiSelectChipDisplay(
                    onTap: (item) {
                      setState(() {
                        _selectedmodules3.remove(item);
                      });
                      _multiSelectKey.currentState.validate();
                    },
                  ),
                ),
                SizedBox(height: 40),
                //################################################################################################
                // MultiSelectChipField
                //################################################################################################
//                MultiSelectChipField(
//                  items: _items,
//                  title: Text("Modules"),
//                  headerColor: Colors.blue.withOpacity(0.5),
//                  decoration: BoxDecoration(
//                    border: Border.all(color: Colors.blue[700], width: 1.8),
//                  ),
//                  selectedChipColor: Colors.blue.withOpacity(0.5),
//                  selectedTextStyle: TextStyle(color: Colors.blue[800]),
//                  onTap: (values) {
//                    _selectedmodules4 = values;
//                  },
//                ),
                SizedBox(height: 40),
                //################################################################################################
                // MultiSelectDialogField with initial values
                //################################################################################################
//                MultiSelectDialogField(
//                  items: _items,
//                  initialValue:
//                  _selectedmodules5, // setting the value of this in initState() to pre-select values.
//                ),
//                ElevatedButton(
//                  child: Text('Next'),
//                  onPressed: () {
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => InterestGroupTags()),
//                    );
//                  },
//                ),
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
