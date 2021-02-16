import 'package:flutter/material.dart';
import 'package:ntucollab/widgets/custom_card.dart';
import 'package:ntucollab/widgets/tag.dart';
import 'package:ntucollab/widgets/tags_selector.dart';

class SelectModuleTags extends StatefulWidget {
  @override
  _SelectModuleTagsState createState() => _SelectModuleTagsState();
}

class _SelectModuleTagsState extends State<SelectModuleTags> {
  List<Tag> _selectedTags = [];
  @override
  void initState() {
    super.initState();
    _selectedTags.add(Tag(id: 1, name: 'Flutter'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Please Select Tags'),
        ),
        body: Center(
            child: CustomCard(
                elevation: 7,
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
                child: TagsSelector(
                  selectedTags: _selectedTags,
                  onTagsChanged: (tags) {
                    setState(() => _selectedTags = tags);
                  },
                ))));
  }
}