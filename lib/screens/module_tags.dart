import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/screens/club_tags.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:ntucollab/models/Tags.dart';

class ModuleTagsPage extends StatefulWidget {
  @override
  _ModuleTagsPageState createState() => _ModuleTagsPageState();
}

class _ModuleTagsPageState extends State<ModuleTagsPage> {
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
      .map((module) => MultiSelectItem<Tags>(module, module.name))
      .toList();
  List<Tags> _selectedModules = [];
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
                  "Modules",
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 20),
                Image(
                  image: AssetImage("assets/images/modules.jpeg"),
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
                        initialValue: _modules,
                        listType: MultiSelectListType.CHIP,
                        searchable: true,
                        buttonText: Text("Module Tags"),
                        title: Text("Modules"),
                        items: _items,
                        onConfirm: (values) {
                          _selectedModules = values;
                        },
                        chipDisplay: MultiSelectChipDisplay(
                          onTap: (value) {
                            setState(() {
                              _selectedModules.remove(value);
                            });
                          },
                        ),
                        onSelectionChanged: (values){
                          print(values);
                        },
                      ),
                      _selectedModules == null || _selectedModules.isEmpty
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
                      MaterialPageRoute(builder: (context) => ClubTags()),
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
