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
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Elevated button'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Text button'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('Outlined button'),
        ),
      ],
    );
  }
}
