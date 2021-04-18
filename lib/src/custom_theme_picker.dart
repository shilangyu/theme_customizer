import 'package:flutter/material.dart';

import 'custom_theme.dart';
import 'editor/color_edit_section.dart';
import 'editor/edit_section.dart';
import 'preview/buttons_preview_tab.dart';
import 'preview/controls_preview_tab.dart';
import 'preview/indicators_preview_tab.dart';
import 'preview/inputs_preview_tab.dart';
import 'preview/popups_preview_tab.dart';
import 'preview/preview_tab.dart';

/// pops the navigator stack with [CustomTheme]
class CustomThemePicker extends StatelessWidget {
  final CustomTheme _theme;

  CustomThemePicker({required ThemeData baseTheme})
      : _theme = CustomTheme.fromThemeData(baseTheme);

  final List<PreviewTab> _previewTabs = [
    ButtonsPreviewTab(),
    ControlsPreviewTab(),
    InputsPreviewTab(),
    IndicatorsPreviewTab(),
    PopupsPreviewTab(),
  ];
  final List<EditSection> _editSections = [
    ColorEditSection(),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomThemeContainer(
      theme: _theme,
      child: Builder(
        builder: (context) {
          final customTheme = CustomThemeProvider.of(context).theme;

          return Theme(
            data: customTheme.toThemeData(),
            child: DefaultTabController(
              length: _previewTabs.length,
              child: Scaffold(
                appBar: AppBar(
                  leading: Builder(
                    builder: (context) {
                      return IconButton(
                        icon: const Icon(Icons.palette),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      );
                    },
                  ),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.save),
                      onPressed: () => Navigator.of(context).pop(customTheme),
                    ),
                  ],
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: [
                      for (final tab in _previewTabs)
                        Tab(
                          icon: Icon(tab.icon),
                          text: tab.title,
                        ),
                    ],
                  ),
                ),
                drawer: Drawer(
                  child: ListView(
                    children: [
                      for (final section in _editSections)
                        ExpansionTile(
                          title: Text(section.title),
                          leading: Icon(section.icon),
                          children: section.buildChildren(context),
                        )
                    ],
                  ),
                ),
                body: TabBarView(children: _previewTabs),
                bottomNavigationBar: BottomAppBar(
                  shape: const CircularNotchedRectangle(),
                  child: Row(
                    children: [
                      IconButton(
                        tooltip: 'Open navigation menu',
                        icon: const Icon(Icons.menu),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: 'Search',
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        tooltip: 'Favorite',
                        icon: const Icon(Icons.favorite),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.endDocked,
                floatingActionButton: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
