import 'package:flutter/material.dart';
import 'package:ntucollab/widgets/app_bar.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:ntucollab/widgets/module_detail_card.dart';
import 'package:ntucollab/widgets/post_card.dart';
import 'package:ntucollab/models/Tags.dart';
import 'package:ntucollab/models/Comment.dart';

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

class GroupDetailsPage extends StatefulWidget {
  final String name;
  final String offeredBy;
  final String year;
  final String details;
  final String rating1;
  final int ratingValue1;
  final String rating2;
  final int ratingValue2;
  final String rating3;
  final int ratingValue3;
  final List<Tags> modulesTagList;
  final List<Comment> comments;
  const GroupDetailsPage(
      {Key key,
      @required this.name,
      @required this.offeredBy,
      @required this.year,
      @required this.details,
      @required this.rating1,
      @required this.ratingValue1,
      @required this.rating2,
      @required this.ratingValue2,
      @required this.rating3,
      @required this.ratingValue3,
      @required this.modulesTagList,
      @required this.comments})
      : super(key: key);

  @override
  _GroupDetailsPageState createState() => _GroupDetailsPageState();
}

class _GroupDetailsPageState extends State<GroupDetailsPage> {
  static List _items;
  List<Tags> tags = [];
  @override
  void initState() {
    super.initState();
    _items = widget.modulesTagList
        .map((animal) => MultiSelectItem<Tags>(animal, animal.name))
        .toList();
    tags = widget.modulesTagList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWidget.getAppBar(
            context,"Module Details", Colors.blue[400], Colors.white),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              ModuleDetailsCard.getModuleDetailsCard(
              context,
              Icons.bar_chart,
              _items,
              widget.name,
              widget.offeredBy,
              widget.year,
              widget.details,
              widget.rating1,
              widget.ratingValue1,
              widget.rating2,
              widget.ratingValue2,
              widget.rating3,
              widget.ratingValue3),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Text("Posts: ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              )),
          PostCard.getPostCard(
              widget.comments[0].name,
              widget.comments[0].comment,
              widget.comments[0].likeCount,
              widget.comments[0].commentCount),
          PostCard.getPostCard(
              widget.comments[1].name,
              widget.comments[1].comment,
              widget.comments[1].likeCount,
              widget.comments[1].commentCount),
        ])));
  }
}
