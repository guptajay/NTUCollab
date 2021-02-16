import 'package:flutter/material.dart';
import 'custom_alert_dialog.dart';
import 'tag.dart';
class TagsDialog extends StatefulWidget {
  final List<Tag> tags;
  final List<Tag> selectedTags;
  TagsDialog({
    Key key,
    @required this.selectedTags,
    @required this.tags,
  }) : super(key: key);
  _TagsDialogState createState() => _TagsDialogState();
}
class _TagsDialogState extends State<TagsDialog> {
  List<Tag> _selectedTags;
  @override
  void initState() {
    super.initState();
    _selectedTags = widget.selectedTags;
  }
  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
      title: 'Select Subject',
      contentPadding: false,
      content: Expanded(
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 10),
              itemCount: widget.tags.length,
              itemBuilder: (_, i) {
                final tag = widget.tags[i];
                return CheckboxListTile(
                  onChanged: (checked) {
                    setState(() {
                      if (checked)
                        _selectedTags.add(tag);
                      else
                        _selectedTags.remove(tag);
                    });
                  },
                  value: _selectedTags.contains(tag),
                  title: Text(tag.name),
                );
              }
          )
      ),
      positiveBtn: 'Save',
      onPositive: () => Navigator.of(context).pop(_selectedTags),
      negativeBtn: 'Cancel',
      onNegative: Navigator.of(context).pop,
    );
  }
}