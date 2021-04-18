import 'package:flutter/material.dart';

import 'preview_tab.dart';

class ControlsPreviewTab extends StatelessWidget implements PreviewTab {
  @override
  IconData get icon => Icons.check_box;

  @override
  String get title => 'Controls';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        Text('Checkbox'),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (val) {},
            ),
            Text('Checked')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            Text('Unchecked')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: null,
              onChanged: (val) {},
              tristate: true,
            ),
            Text('Undecided')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: null,
            ),
            Text('Disabled checked')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: null,
            ),
            Text('Disabled unchecked')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: null,
              onChanged: null,
              tristate: true,
            ),
            Text('Disabled undecided')
          ],
        ),
        Text('Switch'),
        Row(
          children: [
            Switch(
              value: true,
              onChanged: (val) {},
            ),
            Text('Selected')
          ],
        ),
        Row(
          children: [
            Switch(
              value: false,
              onChanged: (val) {},
            ),
            Text('Unselected')
          ],
        ),
        Row(
          children: [
            Switch(
              value: true,
              onChanged: null,
            ),
            Text('Disabled selected')
          ],
        ),
        Row(
          children: [
            Switch(
              value: false,
              onChanged: null,
            ),
            Text('Disabled unselected')
          ],
        ),
        Text('Radio'),
        Row(
          children: [
            Radio<int>(
              groupValue: 1,
              value: 1,
              onChanged: (val) {},
            ),
            Text('Picked')
          ],
        ),
        Row(
          children: [
            Radio<int>(
              groupValue: 0,
              value: 1,
              onChanged: (val) {},
            ),
            Text('Not picked')
          ],
        ),
        Row(
          children: [
            Radio<int>(
              groupValue: 1,
              value: 1,
              onChanged: null,
            ),
            Text('Disabled picked')
          ],
        ),
        Row(
          children: [
            Radio<int>(
              groupValue: 0,
              value: 1,
              onChanged: null,
            ),
            Text('Disabled not picked')
          ],
        ),
        Text('Slider'),
        Slider(
          value: 0.75,
          onChanged: (val) {},
        ),
        Slider(
          value: 0.75,
          onChanged: null,
        ),
        Slider(
          value: 0.75,
          label: 'label',
          divisions: 5,
          onChanged: (val) {},
        ),
        Slider(
          value: 0.75,
          label: 'label',
          divisions: 5,
          onChanged: null,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
