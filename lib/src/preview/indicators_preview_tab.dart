import 'package:flutter/material.dart';

import 'preview_tab.dart';

class IndicatorsPreviewTab extends StatelessWidget implements PreviewTab {
  @override
  IconData get icon => Icons.pending;

  @override
  String get title => 'Indicators';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8),
      children: [
        Text('Linear progress'),
        const SizedBox(height: 4),
        LinearProgressIndicator(),
        const SizedBox(height: 12),
        Text('Circular progress'),
        const SizedBox(height: 4),
        Center(child: CircularProgressIndicator()),
        Text('Snackbar'),
        ElevatedButton(
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Yes hello'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {},
              ),
            ),
          ),
          child: Text('Show snackbar'),
        ),
      ],
    );
  }
}
