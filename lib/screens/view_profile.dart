import 'package:flutter/material.dart';
import 'package:ntucollab/screens/home.dart';
import 'package:ntucollab/widgets/rounded_input.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/models/Tags.dart';

class ViewProfilePage extends StatefulWidget {
  @override
  _ViewProfilePageState createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {
  double _prevScale;
  double _scale;
  static List<Tags> _clubs = [
    Tags(id: 1, name: "Debating"),
    Tags(id: 2, name: "BlockChain"),
    Tags(id: 3, name: "Coding"),
    Tags(id: 4, name: "Collaboration"),
    Tags(id: 5, name: "Donation"),
    Tags(id: 6, name: "Community Service"),
    Tags(id: 7, name: "Planning"),
  ];
  static List<Tags> _modules = [
    Tags(id: 1, name: "Mathematics"),
    Tags(id: 2, name: "Physics"),
    Tags(id: 3, name: "Machine Learning"),
    Tags(id: 4, name: "Software Engineering"),
    Tags(id: 5, name: "Astronomy"),
    Tags(id: 6, name: "Accounting"),
    Tags(id: 7, name: "Data Science"),
  ];
  static List<Tags> _interests = [
    Tags(id: 1, name: "Running"),
    Tags(id: 2, name: "Tennis"),
    Tags(id: 3, name: "Hackathons"),
    Tags(id: 4, name: "Google Workshops"),
    Tags(id: 5, name: "Badminton"),
    Tags(id: 6, name: "Trekking"),
    Tags(id: 7, name: "Debating"),
  ];
  static List _items;
  List<Tags> _selectedClubs = [];
  static List _items1;
  List<Tags> _selectedModules = [];
  static List _items2;
  List<Tags> _selectedInterests = [];

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
    _items = _clubs
        .map((animal) => MultiSelectItem<Tags>(animal, animal.name))
        .toList();
    _items1 = _modules
        .map((animal) => MultiSelectItem<Tags>(animal, animal.name))
        .toList();
    _items2 = _interests
        .map((animal) => MultiSelectItem<Tags>(animal, animal.name))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleUpdate: (ScaleUpdateDetails details) {
        setState(() {
          _scale = (_prevScale * (details.scale));
        });
      },
      onScaleEnd: (ScaleEndDetails details) {
        setState(() {
          _prevScale = _scale;
        });
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50 * _scale,
                  ),
                  Icon(
                      Icons.supervised_user_circle,
                      color: Colors.blueGrey,
                      size: 200
                  ),
                  SizedBox(
                    height: 10 * _scale,
                  ),
                  Text("NTUCollab",
                      style: TextStyle(
                          fontSize: 40.0 * _scale,
                          fontWeight: FontWeight.bold
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Edit Profile",
                      style: TextStyle(
                        fontSize: 25.0 * _scale,
                      )),
                  SizedBox(
                    height: 20 * _scale,
                  ),
                  RoundedInputField(
                    hintText: "Full Name",
                    onChanged: (value) {},
                    controller: TextEditingController(text: 'Divyesh Mundhra'),
                  ),
                  RoundedInputField(
                    hintText: "Email",
                    onChanged: (value) {},
                    controller: TextEditingController(text: 'divyesh001@e.ntu.edu.sg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          MultiSelectBottomSheetField(
                            initialChildSize: 0.4,
                            initialValue: _modules.sublist(1,4),
                            listType: MultiSelectListType.CHIP,
                            searchable: true,
                            buttonText: Text("Module Tags"),
                            title: Text("Modules"),
                            items: _items1,
                            onConfirm: (values) {
                              _selectedModules = values;
                            },
                            chipDisplay: MultiSelectChipDisplay(
                              chipColor: Colors.grey[200],
                              textStyle: TextStyle(color: Colors.black),
                              onTap: (value) {
                                setState(() {
                                  _selectedModules.remove(value);
                                });
                              },
                            ),
                            onSelectionChanged: (values) {
                              print(values);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(.2),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          MultiSelectBottomSheetField(
                            initialChildSize: 0.4,
                            initialValue: _clubs.sublist(1,4),
                            listType: MultiSelectListType.CHIP,
                            searchable: true,
                            buttonText: Text("Club Tags"),
                            title: Text("Clubs"),
                            items: _items,
                            onConfirm: (values) {
                              _selectedClubs = values;
                            },
                            chipDisplay: MultiSelectChipDisplay(
                              chipColor: Colors.grey[200],
                              textStyle: TextStyle(color: Colors.black),
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

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[200].withOpacity(.4),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          MultiSelectBottomSheetField(
                            initialChildSize: 0.4,
                            initialValue: _interests.sublist(1,4),
                            listType: MultiSelectListType.CHIP,
                            searchable: true,
                            buttonText: Text("Interest Tags"),
                            title: Text("Interests"),
                            items: _items2,
                            onConfirm: (values) {
                              _selectedInterests = values;
                            },
                            chipDisplay: MultiSelectChipDisplay(
                              chipColor: Colors.grey[200],
                              textStyle: TextStyle(color: Colors.black),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20 * _scale,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,5),
                    child: OutlineButton(
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
                              'Save Changes',
                              style: TextStyle(
                                fontSize: 20 * _scale,
                                color: Colors.blue[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
