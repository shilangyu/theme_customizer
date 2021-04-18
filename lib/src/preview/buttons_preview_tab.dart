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
      padding: const EdgeInsets.all(8),
      children: [
        const Text('Elevated button'),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Button with icon'),
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Row(
          children: [
            const ElevatedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(width: 8),
            ElevatedButton.icon(
              onPressed: null,
              label: const Text('Disabled with icon'),
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        const Divider(),
        const Text('Outlined button'),
        Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const SizedBox(width: 8),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('Button with icon'),
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Row(
          children: [
            const OutlinedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(width: 8),
            OutlinedButton.icon(
              onPressed: null,
              label: const Text('Disabled with icon'),
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        const Divider(),
        const Text('Text button'),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
            const SizedBox(width: 8),
            TextButton.icon(
              onPressed: () {},
              label: const Text('Button with icon'),
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        Row(
          children: [
            const TextButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            const SizedBox(width: 8),
            TextButton.icon(
              onPressed: null,
              label: const Text('Disabled with icon'),
              icon: const Icon(Icons.add_box_rounded),
            ),
          ],
        ),
        const Divider(),
        const Text('Icon button'),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.add_box_rounded),
              onPressed: () {},
              tooltip: 'Button',
            ),
            const IconButton(
              icon: Icon(Icons.add_box_rounded),
              onPressed: null,
              tooltip: 'Disabled',
            ),
          ],
        ),
        const Divider(),
        const Text('Dropdown button'),
        Row(
          children: [
            SizedBox(
              width: 200,
              child: DropdownButton<String>(
                items: const [
                  DropdownMenuItem(
                    value: 'Hello',
                    child: Text('Hello'),
                  ),
                  DropdownMenuItem(
                    value: 'There',
                    child: Text('There'),
                  ),
                ],
                onChanged: (val) {},
                isExpanded: true,
                hint: const Text('Dropdown hint'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 200,
              child: DropdownButton<String>(
                items: const [
                  DropdownMenuItem(
                    value: 'Hello',
                    child: Text('Hello'),
                  ),
                  DropdownMenuItem(
                    value: 'There',
                    child: Text('There'),
                  ),
                ],
                onChanged: (val) {},
                isExpanded: true,
                value: 'Hello',
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 200,
              child: DropdownButton<String>(
                items: const [
                  DropdownMenuItem(
                    value: 'Hello',
                    child: Text('Hello'),
                  ),
                  DropdownMenuItem(
                    value: 'There',
                    child: Text('There'),
                  ),
                ],
                isExpanded: true,
                hint: const Text('Disabled'),
              ),
            ),
          ],
        ),
        const Divider(),
        const Text('Popup menu button'),
        PopupMenuButton(
          initialValue: 'harder',
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 'harder',
              child: Text('Working a lot harder'),
            ),
            const PopupMenuItem(
              value: 'smarter',
              child: Text('Being a lot smarter'),
            ),
            const PopupMenuItem(
              value: 'selfStarter',
              child: Text('Being a self-starter'),
            ),
            const PopupMenuItem(
              value: 'tradingCharter',
              child: Text('Placed in charge of trading charter'),
            ),
          ],
        ),
        const Divider(),
        const Text('Toggle buttons'),
        ToggleButtons(
          onPressed: (val) {},
          renderBorder: false,
          isSelected: const [
            false,
            true,
            false,
          ],
          children: const [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
        ),
        const SizedBox(height: 4),
        ToggleButtons(
          renderBorder: false,
          isSelected: const [
            false,
            true,
            false,
          ],
          children: const [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
        ),
        const SizedBox(height: 4),
        ToggleButtons(
          onPressed: (val) {},
          isSelected: const [
            false,
            true,
            false,
          ],
          children: const [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
        ),
        const SizedBox(height: 4),
        ToggleButtons(
          isSelected: const [
            false,
            true,
            false,
          ],
          children: const [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
        ),
      ],
    );
  }
}
