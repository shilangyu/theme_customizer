import 'package:flutter/material.dart';

import '../custom_theme.dart';
import 'components/color_picker_field.dart';
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
      ColorPickerField(
        title: 'Unselected widget color',
        color: customTheme.theme.unselectedWidgetColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.unselectedWidgetColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Selected row color',
        color: customTheme.theme.selectedRowColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.selectedRowColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Accent color',
        color: customTheme.theme.accentColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.accentColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Primary color dark',
        color: customTheme.theme.primaryColorDark,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.primaryColorDark = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Primary color light',
        color: customTheme.theme.primaryColorLight,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.primaryColorLight = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Splash color',
        color: customTheme.theme.splashColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.splashColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Highlight color',
        color: customTheme.theme.highlightColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.highlightColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Hover color',
        color: customTheme.theme.hoverColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.hoverColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Focus color',
        color: customTheme.theme.focusColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.focusColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Divider color',
        color: customTheme.theme.dividerColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.dividerColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Card color',
        color: customTheme.theme.cardColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.cardColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Bottom app bar color',
        color: customTheme.theme.bottomAppBarColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.bottomAppBarColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Shadow color',
        color: customTheme.theme.shadowColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.shadowColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Primary color',
        color: customTheme.theme.primaryColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.primaryColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Background color',
        color: customTheme.theme.backgroundColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.backgroundColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Error color',
        color: customTheme.theme.errorColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.errorColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Hint color',
        color: customTheme.theme.hintColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.hintColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Indicator color',
        color: customTheme.theme.indicatorColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.indicatorColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Dialog background color',
        color: customTheme.theme.dialogBackgroundColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.dialogBackgroundColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Secondary header color',
        color: customTheme.theme.secondaryHeaderColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.secondaryHeaderColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Button color',
        color: customTheme.theme.buttonColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.buttonColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Disabled color',
        color: customTheme.theme.disabledColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.disabledColor = color;
          });
        },
      ),
      ColorPickerField(
        title: 'Toggleable active color',
        color: customTheme.theme.toggleableActiveColor,
        onChanged: (color) {
          customTheme.update(() {
            customTheme.theme.toggleableActiveColor = color;
          });
        },
      ),
    ];
  }
}
