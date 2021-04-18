import 'package:flutter/material.dart';

import 'preview_tab.dart';

class PopupsPreviewTab extends StatelessWidget implements PreviewTab {
  @override
  IconData get icon => Icons.info;

  @override
  String get title => 'Popups';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('AlertDialog Title'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text('This is a demo alert dialog.'),
                        Text('Would you like to approve of this message?'),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: Text('Approve'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Open a alert dialog'),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: const Text('Select assignment'),
                  children: <Widget>[
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Treasury department'),
                    ),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('State department'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Open a simple dialog'),
        ),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('hello'),
                    Text('there'),
                  ],
                );
              },
            );
          },
          child: Text('Open modal bottom sheet'),
        ),
        ElevatedButton(
          onPressed: () {
            showBottomSheet<void>(
              context: context,
              builder: (context) {
                return Container(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('hello'),
                        Text('there'),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Text('Open bottom sheet'),
        ),
      ],
    );
  }
}
