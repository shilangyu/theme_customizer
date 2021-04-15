import 'package:flutter/material.dart';
import 'package:theme_customizer/src/editor/components/color_picker_field.dart';

import '../custom_theme.dart';
import 'edit_section.dart';

class ColorEditSection implements EditSection {
  IconData get icon => Icons.palette;
  String get title => 'Colors';

  List<Widget> buildChildren(BuildContext context) {
    final customTheme = CustomThemeProvider.of(context);

    return [
      ColorPickerField(
        title: 'Scaffold background color',
        color: customTheme.theme.scaffoldBackgroundColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.scaffoldBackgroundColor = color;
          });
        },
      ),
    ];
  }
}
