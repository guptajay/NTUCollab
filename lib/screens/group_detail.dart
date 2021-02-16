import 'package:flutter/material.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/widgets/group_detail_card.dart';

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

class Tags {
  final int id;
  final String name;

  Tags({
    this.id,
    this.name,
  });
}

class GroupDetailsPage extends StatefulWidget {
  @override
  _GroupDetailsPageState createState() => _GroupDetailsPageState();
}

class _GroupDetailsPageState extends State<GroupDetailsPage> {
  static List<Tags> _modules = [
    Tags(id: 1, name: "Mathematics"),
    Tags(id: 2, name: "Data Science"),
    Tags(id: 3, name: "Algebra"),
  ];
  final _items = _modules
      .map((animal) => MultiSelectItem<Tags>(animal, animal.name))
      .toList();
  List<Tags> tags = [];

  @override
  void initState() {
    super.initState();
    tags = _modules;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget.getAppBar(
            "Group Details", Colors.blue[400], Colors.white),
        body: SingleChildScrollView(
            child: GroupDetailsCard.getGroupDetailsCard(
                Icons.bar_chart,
                _items,
                "CZ4041 - Machine Learning",
                "SCSE",
                "4",
                "This course introduces to the basic concepts used in Machine Learning.",
                "Difficulty",
                4,
                "Time",
                2,
                "Demand",
                3)));
  }
}
