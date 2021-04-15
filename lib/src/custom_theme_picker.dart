import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:theme_customizer/src/editor/color_picker_field.dart';

import 'custom_theme.dart';

/// pops the navigator stack with [CustomTheme]
class CustomThemePicker extends StatefulWidget {
  final CustomTheme _theme;

  CustomThemePicker({
    required ThemeData baseTheme,
  }) : _theme = CustomTheme.fromThemeData(baseTheme);

  @override
  _CustomThemePickerState createState() => _CustomThemePickerState();
}

class _CustomThemePickerState extends State<CustomThemePicker> {
  VoidCallback pickColor(Color value, ValueChanged<Color> setter) =>
      () => showDialog<void>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Pick a color!'),
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: value,
                  onColorChanged: (color) => setState(() => setter(color)),
                  // showLabel: true,
                  // pickerAreaHeightPercent: 0.8,
                ),
                // Use Material color picker:
                //
                // child: MaterialPicker(
                //   pickerColor: pickerColor,
                //   onColorChanged: changeColor,
                //   showLabel: true, // only on portrait mode
                // ),
                //
                // Use Block color picker:
                //
                // child: BlockPicker(
                //   pickerColor: currentColor,
                //   onColorChanged: changeColor,
                // ),
                //
                // child: MultipleChoiceBlockPicker(
                //   pickerColors: currentColors,
                //   onColorsChanged: changeColors,
                // ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Got it'),
                  onPressed: () {
                    // setState(() => currentColor = pickerColor);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: widget._theme.toThemeData(),
      child: Scaffold(
        body: ListView(
          children: [
            ColorPickerField(
              title: 'backgroundColor',
              color: widget._theme.backgroundColor,
              onChanged: (c) => setState(() {
                widget._theme.backgroundColor = c;
              }),
            ),
            ColorPickerField(
              title: 'scaffoldBackgroundColor',
              color: widget._theme.scaffoldBackgroundColor,
              onChanged: (c) => setState(() {
                widget._theme.scaffoldBackgroundColor = c;
              }),
            ),
            ColorPickerField(
              title: 'primaryColor',
              color: widget._theme.primaryColor,
              onChanged: (c) => setState(() {
                widget._theme.primaryColor = c;
              }),
            ),
            ColorPickerField(
              title: 'canvasColor',
              color: widget._theme.canvasColor,
              onChanged: (c) => setState(() {
                widget._theme.canvasColor = c;
              }),
            ),
            ColorPickerField(
              title: 'shadowColor',
              color: widget._theme.shadowColor,
              onChanged: (c) => setState(() {
                widget._theme.shadowColor = c;
              }),
            ),
            ColorPickerField(
              title: 'bottomAppBarColor',
              color: widget._theme.bottomAppBarColor,
              onChanged: (c) => setState(() {
                widget._theme.bottomAppBarColor = c;
              }),
            ),
            ColorPickerField(
              title: 'cardColor',
              color: widget._theme.cardColor,
              onChanged: (c) => setState(() {
                widget._theme.cardColor = c;
              }),
            ),
            ColorPickerField(
              title: 'dividerColor',
              color: widget._theme.dividerColor,
              onChanged: (c) => setState(() {
                widget._theme.dividerColor = c;
              }),
            ),
            ColorPickerField(
              title: 'focusColor',
              color: widget._theme.focusColor,
              onChanged: (c) => setState(() {
                widget._theme.focusColor = c;
              }),
            ),
            ColorPickerField(
              title: 'hoverColor',
              color: widget._theme.hoverColor,
              onChanged: (c) => setState(() {
                widget._theme.hoverColor = c;
              }),
            ),
            ColorPickerField(
              title: 'highlightColor',
              color: widget._theme.highlightColor,
              onChanged: (c) => setState(() {
                widget._theme.highlightColor = c;
              }),
            ),
            ColorPickerField(
              title: 'splashColor',
              color: widget._theme.splashColor,
              onChanged: (c) => setState(() {
                widget._theme.splashColor = c;
              }),
            ),
            ColorPickerField(
              title: 'primaryColorLight',
              color: widget._theme.primaryColorLight,
              onChanged: (c) => setState(() {
                widget._theme.primaryColorLight = c;
              }),
            ),
            ColorPickerField(
              title: 'primaryColorDark',
              color: widget._theme.primaryColorDark,
              onChanged: (c) => setState(() {
                widget._theme.primaryColorDark = c;
              }),
            ),
            ColorPickerField(
              title: 'accentColor',
              color: widget._theme.accentColor,
              onChanged: (c) => setState(() {
                widget._theme.accentColor = c;
              }),
            ),
            ColorPickerField(
              title: 'selectedRowColor',
              color: widget._theme.selectedRowColor,
              onChanged: (c) => setState(() {
                widget._theme.selectedRowColor = c;
              }),
            ),
            ColorPickerField(
              title: 'unselectedWidgetColor',
              color: widget._theme.unselectedWidgetColor,
              onChanged: (c) => setState(() {
                widget._theme.unselectedWidgetColor = c;
              }),
            ),
            ColorPickerField(
              title: 'disabledColor',
              color: widget._theme.disabledColor,
              onChanged: (c) => setState(() {
                widget._theme.disabledColor = c;
              }),
            ),
            ColorPickerField(
              title: 'buttonColor',
              color: widget._theme.buttonColor,
              onChanged: (c) => setState(() {
                widget._theme.buttonColor = c;
              }),
            ),
            ColorPickerField(
              title: 'secondaryHeaderColor',
              color: widget._theme.secondaryHeaderColor,
              onChanged: (c) => setState(() {
                widget._theme.secondaryHeaderColor = c;
              }),
            ),
            ColorPickerField(
              title: 'dialogBackgroundColor',
              color: widget._theme.dialogBackgroundColor,
              onChanged: (c) => setState(() {
                widget._theme.dialogBackgroundColor = c;
              }),
            ),
            ColorPickerField(
              title: 'indicatorColor',
              color: widget._theme.indicatorColor,
              onChanged: (c) => setState(() {
                widget._theme.indicatorColor = c;
              }),
            ),
            ColorPickerField(
              title: 'hintColor',
              color: widget._theme.hintColor,
              onChanged: (c) => setState(() {
                widget._theme.hintColor = c;
              }),
            ),
            ColorPickerField(
              title: 'errorColor',
              color: widget._theme.errorColor,
              onChanged: (c) => setState(() {
                widget._theme.errorColor = c;
              }),
            ),
            ColorPickerField(
              title: 'toggleableActiveColor',
              color: widget._theme.toggleableActiveColor,
              onChanged: (c) => setState(() {
                widget._theme.toggleableActiveColor = c;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
