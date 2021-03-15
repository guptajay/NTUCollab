import 'package:flutter/material.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:ntucollab/models/Tags.dart';
import 'package:ntucollab/screens/home.dart';
import 'package:ntucollab/widgets/rounded_input.dart';
import 'package:ntucollab/widgets/rounded_password.dart';
import 'package:ntucollab/widgets/text_field.dart';

class NewGroupPage extends StatefulWidget {
  @override
  _NewGroupPageState createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
  double _prevScale;
  double _scale;

  static List<Tags> _names = [
    Tags(id: 1, name: "Jay Gupta"),
    Tags(id: 2, name: "Divyesh Mundhra"),
    Tags(id: 3, name: "Ritwik Kanodia"),
    Tags(id: 4, name: "Ritik Bhatia"),
    Tags(id: 5, name: "Aditya Bansal"),
    Tags(id: 6, name: "Palak Somani"),
    Tags(id: 7, name: "Soham Dandapath"),
  ];

  static List<Tags> _groupTags = [
    Tags(id: 1, name: "Hiking"),
    Tags(id: 2, name: "Debating"),
    Tags(id: 3, name: "Tea/Coffee"),
    Tags(id: 4, name: "Games"),
    Tags(id: 5, name: "Anime"),
  ];

  final _items =
      _names.map((names) => MultiSelectItem<Tags>(names, names.name)).toList();

  final _groupTagsItems = _groupTags
      .map((groupTags) => MultiSelectItem<Tags>(groupTags, groupTags.name))
      .toList();

  List<Tags> _selectedClubs = [];
  List<Tags> _selectedTags = [];

  @override
  void initState() {
    super.initState();
    _prevScale = _scale = 1.0;
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
                  Icon(Icons.group_add_sharp,
                      color: Colors.blueGrey, size: 200),
                  SizedBox(
                    height: 10 * _scale,
                  ),
                  Text("NTUCollab",
                      style: TextStyle(
                          fontSize: 40.0 * _scale,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Create Group",
                      style: TextStyle(
                        fontSize: 25.0 * _scale,
                      )),
                  SizedBox(
                    height: 60 * _scale,
                  ),
                  RoundedInputField(
                    hintText: "Group Name",
                    onChanged: (value) {},
                  ),
                  RoundedInputField(
                    hintText: "Description",
                    icon: Icons.info_outline,
                    onChanged: (value) {},
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    decoration: BoxDecoration(
                        color: Colors.blue[200].withOpacity(.4),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: <Widget>[
                        MultiSelectBottomSheetField(
                          initialChildSize: 0.4,
                          initialValue: _groupTags,
                          listType: MultiSelectListType.CHIP,
                          searchable: true,
                          buttonText: Text("Select Tags"),
                          title: Text("Group Tag List"),
                          items: _groupTagsItems,
                          onConfirm: (values) {
                            _selectedTags = values;
                          },
                          chipDisplay: MultiSelectChipDisplay(
                            chipColor: Colors.grey[200],
                            textStyle: TextStyle(color: Colors.black),
                            onTap: (value) {
                              setState(() {
                                _selectedTags.remove(value);
                              });
                            },
                          ),
                          onSelectionChanged: (values) {
                            print(values);
                          },
                        ),
                        _selectedTags == null || _selectedTags.isEmpty
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
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    decoration: BoxDecoration(
                        color: Colors.blue[200].withOpacity(.4),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: <Widget>[
                        MultiSelectBottomSheetField(
                          initialChildSize: 0.4,
                          initialValue: _names,
                          listType: MultiSelectListType.CHIP,
                          searchable: true,
                          buttonText: Text("Select Students"),
                          title: Text("Student List"),
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
                          onSelectionChanged: (values) {
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
                  SizedBox(
                    height: 20 * _scale,
                  ),
                  OutlineButton(
                    splashColor: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    highlightElevation: 0,
                    borderSide: BorderSide(color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Create Group',
                            style: TextStyle(
                              fontSize: 20 * _scale,
                              color: Colors.blue[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20 * _scale,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
