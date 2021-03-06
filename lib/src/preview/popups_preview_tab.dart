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
      padding: const EdgeInsets.all(8),
      children: [
        ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: const [
                        Text('This is a demo alert dialog.'),
                        Text('Would you like to approve of this message?'),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Approve'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Open a alert dialog'),
        ),
        const Divider(),
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
          child: const Text('Open a simple dialog'),
        ),
        const Divider(),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('hello'),
                    Text('there'),
                  ],
                );
              },
            );
          },
          child: const Text('Open modal bottom sheet'),
        ),
        const Divider(),
        ElevatedButton(
          onPressed: () {
            showBottomSheet<void>(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('hello'),
                        Text('there'),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Open bottom sheet'),
        ),
      ],
    );
  }
}
