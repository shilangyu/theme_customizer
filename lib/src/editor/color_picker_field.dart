import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerField extends StatelessWidget {
  final String title;
  final Color color;
  final ValueChanged<Color> onChanged;

  const ColorPickerField({
    Key? key,
    required this.title,
    required this.color,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: color,
              onColorChanged: onChanged,
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
      ),
    );
  }
}
