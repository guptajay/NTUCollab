import 'package:flutter/material.dart';
import 'btn_colored.dart';
import 'tag.dart';
import 'tags_dialog.dart';

class TagsSelector extends StatefulWidget {
  final ValueChanged<List<Tag>> onTagsChanged;
  final List<Tag> selectedTags;
  TagsSelector({
    Key key,
    @required this.onTagsChanged,
    @required this.selectedTags,
  }) : super(key: key);
  _TagsSelectorState createState() => _TagsSelectorState();
}
class _TagsSelectorState extends State<TagsSelector> {
  List<Tag> _allTags = [];
  @override
  void initState() {
    super.initState();
    _fetchTags();
  }
  void _fetchTags() async {
    try {
      _allTags.add(Tag(id: 1, name: 'Mathematics'));
      _allTags.add(Tag(id: 1, name: 'Astronomy'));
      _allTags.add(Tag(id: 1, name: 'Machine Learning'));
      _allTags.add(Tag(id: 1, name: 'Software Engineering'));
    } catch (e) {}
  }
  Future _openTagDialog() async {
    List<Tag> newTags = await showDialog<List<Tag>>(
      context: context,
      builder: (_) =>
          TagsDialog(tags: _allTags, selectedTags: widget.selectedTags),
    );
    if (newTags != null) widget.onTagsChanged(newTags);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(
            'Selected Module Tags',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8.0,
          runSpacing: -6.0,
          children: List.generate(
            widget.selectedTags.length,
                (i) {
              return Chip(
                label: Text(
                  widget.selectedTags[i].name,
                  style: const TextStyle(color: Colors.white),
                ),
                elevation: 3,
                labelPadding: const EdgeInsets.only(left: 10),
                onDeleted: () {
                  setState(
                          () => widget.selectedTags.remove(widget.selectedTags[i]));
                },
                deleteIcon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
                backgroundColor: Colors.grey[600],
              );
            },
          ),
        ),
//        new FlatButton.icon(
//          color: Colors.black,
//          icon: Icon(
//            Icons.add,
//            color: Colors.white,
//            size: 18,
//          ),
//          label: Text('Subject ',
//              style: TextStyle(fontSize: 12, color: Colors.white)),
//          onPressed: () {
////              widget.selectedTags.add(Tag(1,"abc"));
//          },
//        ),
        Align(
          alignment: Alignment.center,
          child: BtnColored(
            text: 'Select Module Tags',
            onPressed: _openTagDialog,
          ),
        ),
        SizedBox(height: 20),

        Center(
          child: Text(
            'Selected Club Tags',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8.0,
          runSpacing: -6.0,
          children: List.generate(
            widget.selectedTags.length,
                (i) {
              return Chip(
                label: Text(
                  widget.selectedTags[i].name,
                  style: const TextStyle(color: Colors.white),
                ),
                elevation: 3,
                labelPadding: const EdgeInsets.only(left: 10),
                onDeleted: () {
                  setState(
                          () => widget.selectedTags.remove(widget.selectedTags[i]));
                },
                deleteIcon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
                backgroundColor: Colors.grey[600],
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: BtnColored(
            text: 'Select Club Tags',
            onPressed: _openTagDialog,
          ),
        ),
        SizedBox(height: 20),

        Center(
          child: Text(
            'Selected Interest Tags',
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8.0,
          runSpacing: -6.0,
          children: List.generate(
            widget.selectedTags.length,
                (i) {
              return Chip(
                label: Text(
                  widget.selectedTags[i].name,
                  style: const TextStyle(color: Colors.white),
                ),
                elevation: 3,
                labelPadding: const EdgeInsets.only(left: 10),
                onDeleted: () {
                  setState(
                          () => widget.selectedTags.remove(widget.selectedTags[i]));
                },
                deleteIcon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
                backgroundColor: Colors.grey[600],
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: BtnColored(
            text: 'Select Interest Tags',
            onPressed: _openTagDialog,
          ),
        ),
      ],
    );
  }
}