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
      padding: const EdgeInsets.all(8),
      children: [
        const Text('Linear progress'),
        const SizedBox(height: 4),
        const LinearProgressIndicator(),
        const Divider(),
        const Text('Circular progress'),
        const SizedBox(height: 4),
        const Center(child: CircularProgressIndicator()),
        const Divider(),
        const Text('Snackbar'),
        ElevatedButton(
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Yes hello'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {},
              ),
            ),
          ),
          child: const Text('Show snackbar'),
        ),
      ],
    );
  }
}
