import 'package:flutter/material.dart';

import 'preview_tab.dart';

class InputsPreviewTab extends StatelessWidget implements PreviewTab {
  @override
  IconData get icon => Icons.keyboard;

  @override
  String get title => 'Inputs';

  List<Widget> buildFields({required bool filled}) => [
        TextField(
          decoration: InputDecoration(
            filled: filled,
            labelText: 'Label',
            hintText: 'Hint',
          ),
          maxLength: 10,
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            filled: filled,
            prefixText: 'Prefix',
            prefixIcon: Icon(Icons.phone),
            suffixIcon: Icon(Icons.phone),
            suffixText: 'Suffix',
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            filled: filled,
            helperText: 'Helper',
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            filled: filled,
            enabled: false,
            hintText: 'Disabled',
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            filled: filled,
            errorText: 'Error',
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        Text('Normal'),
        ...buildFields(filled: false),
        const SizedBox(height: 16),
        Text('Filled'),
        ...buildFields(filled: true),
      ],
    );
  }
}
