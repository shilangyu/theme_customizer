import 'package:flutter/material.dart';

import 'preview_tab.dart';

class ButtonsPreviewTab extends StatelessWidget implements PreviewTab {
  @override
  IconData get icon => Icons.touch_app;

  @override
  String get title => 'Buttons';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        Text('Elevated button'),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Button with icon'),
              icon: Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: null,
              label: Text('Disabled with icon'),
              icon: Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Text('Outlined button'),
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
            const SizedBox(width: 8),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Button with icon'),
              icon: Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Row(
          children: [
            OutlinedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(width: 8),
            OutlinedButton.icon(
              onPressed: null,
              label: Text('Disabled with icon'),
              icon: Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Text('Text button'),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Button'),
            ),
            const SizedBox(width: 8),
            TextButton.icon(
              onPressed: () {},
              label: Text('Button with icon'),
              icon: Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Row(
          children: [
            TextButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(width: 8),
            TextButton.icon(
              onPressed: null,
              label: Text('Disabled with icon'),
              icon: Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Text('Icon button'),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.add_box_rounded),
              onPressed: () {},
              tooltip: 'Button',
            ),
            IconButton(
              icon: Icon(Icons.add_box_rounded),
              onPressed: null,
              tooltip: 'Disabled',
            ),
          ],
        ),
      ],
    );
  }
}
