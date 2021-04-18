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
        Text('Dropdown button'),
        Row(
          children: [
            SizedBox(
              width: 200,
              child: DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Text('Hello'),
                    value: 'Hello',
                  ),
                  DropdownMenuItem(
                    child: Text('There'),
                    value: 'There',
                  ),
                ],
                onChanged: (val) {},
                isExpanded: true,
                hint: Text('Dropdown hint'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 200,
              child: DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Text('Hello'),
                    value: 'Hello',
                  ),
                  DropdownMenuItem(
                    child: Text('There'),
                    value: 'There',
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
                items: [
                  DropdownMenuItem(
                    child: Text('Hello'),
                    value: 'Hello',
                  ),
                  DropdownMenuItem(
                    child: Text('There'),
                    value: 'There',
                  ),
                ],
                isExpanded: true,
                hint: Text('Disabled'),
              ),
            ),
          ],
        ),
        Text('Popup menu button'),
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
        Text('Toggle buttons'),
        ToggleButtons(
          onPressed: (val) {},
          renderBorder: false,
          children: [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
          isSelected: [
            false,
            true,
            false,
          ],
        ),
        const SizedBox(height: 4),
        ToggleButtons(
          renderBorder: false,
          children: [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
          isSelected: [
            false,
            true,
            false,
          ],
        ),
        const SizedBox(height: 4),
        ToggleButtons(
          onPressed: (val) {},
          children: [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
          isSelected: [
            false,
            true,
            false,
          ],
        ),
        const SizedBox(height: 4),
        ToggleButtons(
          children: [
            Icon(Icons.format_bold),
            Icon(Icons.format_italic),
            Icon(Icons.format_underline),
          ],
          isSelected: [
            false,
            true,
            false,
          ],
        ),
      ],
    );
  }
}
