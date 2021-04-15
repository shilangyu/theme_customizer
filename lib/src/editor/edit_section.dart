import 'package:flutter/material.dart';

abstract class EditSection {
  abstract final String title;
  abstract final IconData icon;

  List<Widget> buildChildren(BuildContext context);
}
