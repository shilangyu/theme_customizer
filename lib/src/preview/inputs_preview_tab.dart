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
            prefixIcon: const Icon(Icons.phone),
            suffixIcon: const Icon(Icons.phone),
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
      padding: const EdgeInsets.all(8),
      children: [
        const Text('Normal'),
        ...buildFields(filled: false),
        const Divider(),
        const Text('Filled'),
        ...buildFields(filled: true),
      ],
    );
  }
}
