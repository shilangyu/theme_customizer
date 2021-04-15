import 'package:flutter/material.dart';
import 'package:theme_customizer/src/editor/color_edit_section.dart';
import 'package:theme_customizer/src/editor/edit_section.dart';
import 'package:theme_customizer/src/preview/buttons_preview_tab.dart';
import 'package:theme_customizer/src/preview/preview_tab.dart';

import 'custom_theme.dart';

/// pops the navigator stack with [CustomTheme]
class CustomThemePicker extends StatelessWidget {
  final CustomTheme _theme;

  CustomThemePicker({required ThemeData baseTheme})
      : _theme = CustomTheme.fromThemeData(baseTheme);

  final List<PreviewTab> _previewTabs = [
    ButtonsPreviewTab(),
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
          return Theme(
            data: CustomThemeProvider.of(context).theme.toThemeData(),
            child: DefaultTabController(
              length: _previewTabs.length,
              child: Scaffold(
                appBar: AppBar(
                  leading: Builder(
                    builder: (context) {
                      return IconButton(
                        icon: Icon(Icons.palette),
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      );
                    },
                  ),
                  bottom: TabBar(
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
              ),
            ),
          );
        },
      ),
    );
  }
}
