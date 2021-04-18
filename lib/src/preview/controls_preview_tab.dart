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
      padding: const EdgeInsets.all(8),
      children: [
        const Text('Checkbox'),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (val) {},
            ),
            const Text('Checked')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (val) {},
            ),
            const Text('Unchecked')
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: null,
              onChanged: (val) {},
              tristate: true,
            ),
            const Text('Undecided')
          ],
        ),
        Row(
          children: const [
            Checkbox(
              value: true,
              onChanged: null,
            ),
            Text('Disabled checked')
          ],
        ),
        Row(
          children: const [
            Checkbox(
              value: false,
              onChanged: null,
            ),
            Text('Disabled unchecked')
          ],
        ),
        Row(
          children: const [
            Checkbox(
              value: null,
              onChanged: null,
              tristate: true,
            ),
            Text('Disabled undecided')
          ],
        ),
        const Text('Switch'),
        Row(
          children: [
            Switch(
              value: true,
              onChanged: (val) {},
            ),
            const Text('Selected')
          ],
        ),
        Row(
          children: [
            Switch(
              value: false,
              onChanged: (val) {},
            ),
            const Text('Unselected')
          ],
        ),
        Row(
          children: const [
            Switch(
              value: true,
              onChanged: null,
            ),
            Text('Disabled selected')
          ],
        ),
        Row(
          children: const [
            Switch(
              value: false,
              onChanged: null,
            ),
            Text('Disabled unselected')
          ],
        ),
        const Text('Radio'),
        Row(
          children: [
            Radio<int>(
              groupValue: 1,
              value: 1,
              onChanged: (val) {},
            ),
            const Text('Picked')
          ],
        ),
        Row(
          children: [
            Radio<int>(
              groupValue: 0,
              value: 1,
              onChanged: (val) {},
            ),
            const Text('Not picked')
          ],
        ),
        Row(
          children: const [
            Radio<int>(
              groupValue: 1,
              value: 1,
              onChanged: null,
            ),
            Text('Disabled picked')
          ],
        ),
        Row(
          children: const [
            Radio<int>(
              groupValue: 0,
              value: 1,
              onChanged: null,
            ),
            Text('Disabled not picked')
          ],
        ),
        const Text('Slider'),
        Slider(
          value: 0.75,
          onChanged: (val) {},
        ),
        const Slider(
          value: 0.75,
          onChanged: null,
        ),
        Slider(
          value: 0.75,
          label: 'label',
          divisions: 5,
          onChanged: (val) {},
        ),
        const Slider(
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
