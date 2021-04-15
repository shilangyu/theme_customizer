import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'json_converters.dart';

part 'custom_theme.g.dart';

/// A [ThemeData] clone but it is serializable
@JsonSerializable()
@ColorConverter()
class CustomTheme {
  Color backgroundColor;
  Color scaffoldBackgroundColor;
  Color primaryColor;
  Color canvasColor;
  Color shadowColor;
  Color bottomAppBarColor;
  Color cardColor;
  Color dividerColor;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  Color splashColor;
  Color primaryColorLight;
  Color primaryColorDark;
  Color accentColor;
  Color selectedRowColor;
  Color unselectedWidgetColor;
  Color disabledColor;
  Color buttonColor;
  Color secondaryHeaderColor;
  Color dialogBackgroundColor;
  Color indicatorColor;
  Color hintColor;
  Color errorColor;
  Color toggleableActiveColor;

  CustomTheme({
    required this.backgroundColor,
    required this.scaffoldBackgroundColor,
    required this.primaryColor,
    required this.canvasColor,
    required this.shadowColor,
    required this.bottomAppBarColor,
    required this.cardColor,
    required this.dividerColor,
    required this.focusColor,
    required this.hoverColor,
    required this.highlightColor,
    required this.splashColor,
    required this.primaryColorLight,
    required this.primaryColorDark,
    required this.accentColor,
    required this.selectedRowColor,
    required this.unselectedWidgetColor,
    required this.disabledColor,
    required this.buttonColor,
    required this.secondaryHeaderColor,
    required this.dialogBackgroundColor,
    required this.indicatorColor,
    required this.hintColor,
    required this.errorColor,
    required this.toggleableActiveColor,
  });

  CustomTheme.fromThemeData(ThemeData theme)
      : this(
          backgroundColor: theme.backgroundColor,
          scaffoldBackgroundColor: theme.scaffoldBackgroundColor,
          primaryColor: theme.primaryColor,
          canvasColor: theme.canvasColor,
          shadowColor: theme.shadowColor,
          bottomAppBarColor: theme.bottomAppBarColor,
          cardColor: theme.cardColor,
          dividerColor: theme.dividerColor,
          focusColor: theme.focusColor,
          hoverColor: theme.hoverColor,
          highlightColor: theme.highlightColor,
          splashColor: theme.splashColor,
          primaryColorLight: theme.primaryColorLight,
          primaryColorDark: theme.primaryColorDark,
          accentColor: theme.accentColor,
          selectedRowColor: theme.selectedRowColor,
          unselectedWidgetColor: theme.unselectedWidgetColor,
          disabledColor: theme.disabledColor,
          buttonColor: theme.buttonColor,
          secondaryHeaderColor: theme.secondaryHeaderColor,
          dialogBackgroundColor: theme.dialogBackgroundColor,
          indicatorColor: theme.indicatorColor,
          hintColor: theme.hintColor,
          errorColor: theme.errorColor,
          toggleableActiveColor: theme.toggleableActiveColor,
        );

  ThemeData toThemeData() => ThemeData(
        backgroundColor: backgroundColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        primaryColor: primaryColor,
        canvasColor: canvasColor,
        shadowColor: shadowColor,
        bottomAppBarColor: bottomAppBarColor,
        cardColor: cardColor,
        dividerColor: dividerColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        primaryColorLight: primaryColorLight,
        primaryColorDark: primaryColorDark,
        accentColor: accentColor,
        selectedRowColor: selectedRowColor,
        unselectedWidgetColor: unselectedWidgetColor,
        disabledColor: disabledColor,
        buttonColor: buttonColor,
        secondaryHeaderColor: secondaryHeaderColor,
        dialogBackgroundColor: dialogBackgroundColor,
        indicatorColor: indicatorColor,
        hintColor: hintColor,
        errorColor: errorColor,
        toggleableActiveColor: toggleableActiveColor,
      );

  factory CustomTheme.fromJson(Map<String, dynamic> json) =>
      _$CustomThemeFromJson(json);
  Map<String, dynamic> toJson() => _$CustomThemeToJson(this);
}

/* 
ALL
    Brightness? brightness,
    VisualDensity? visualDensity,
    MaterialColor? primarySwatch,
    Color? primaryColor,
    Brightness? primaryColorBrightness,
    Color? primaryColorLight,
    Color? primaryColorDark,
    Color? accentColor,
    Brightness? accentColorBrightness,
    Color? canvasColor,
    Color? shadowColor,
    Color? scaffoldBackgroundColor,
    Color? bottomAppBarColor,
    Color? cardColor,
    Color? dividerColor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    Color? selectedRowColor,
    Color? unselectedWidgetColor,
    Color? disabledColor,
    Color? buttonColor,
    ButtonThemeData? buttonTheme,
    ToggleButtonsThemeData? toggleButtonsTheme,
    Color? secondaryHeaderColor,
    Color? backgroundColor,
    Color? dialogBackgroundColor,
    Color? indicatorColor,
    Color? hintColor,
    Color? errorColor,
    Color? toggleableActiveColor,
    String? fontFamily,
    TextTheme? textTheme,
    TextTheme? primaryTextTheme,
    TextTheme? accentTextTheme,
    InputDecorationTheme? inputDecorationTheme,
    IconThemeData? iconTheme,
    IconThemeData? primaryIconTheme,
    IconThemeData? accentIconTheme,
    SliderThemeData? sliderTheme,
    TabBarTheme? tabBarTheme,
    TooltipThemeData? tooltipTheme,
    CardTheme? cardTheme,
    ChipThemeData? chipTheme,
    TargetPlatform? platform,
    MaterialTapTargetSize? materialTapTargetSize,
    bool? applyElevationOverlayColor,
    PageTransitionsTheme? pageTransitionsTheme,
    AppBarTheme? appBarTheme,
    ScrollbarThemeData? scrollbarTheme,
    BottomAppBarTheme? bottomAppBarTheme,
    ColorScheme? colorScheme,
    DialogTheme? dialogTheme,
    FloatingActionButtonThemeData? floatingActionButtonTheme,
    NavigationRailThemeData? navigationRailTheme,
    Typography? typography,
    NoDefaultCupertinoThemeData? cupertinoOverrideTheme,
    SnackBarThemeData? snackBarTheme,
    BottomSheetThemeData? bottomSheetTheme,
    PopupMenuThemeData? popupMenuTheme,
    MaterialBannerThemeData? bannerTheme,
    DividerThemeData? dividerTheme,
    ButtonBarThemeData? buttonBarTheme,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    TimePickerThemeData? timePickerTheme,
    TextButtonThemeData? textButtonTheme,
    ElevatedButtonThemeData? elevatedButtonTheme,
    OutlinedButtonThemeData? outlinedButtonTheme,
    TextSelectionThemeData? textSelectionTheme,
    DataTableThemeData? dataTableTheme,
    CheckboxThemeData? checkboxTheme,
    RadioThemeData? radioTheme,
    SwitchThemeData? switchTheme,
    bool? fixTextFieldOutlineLabel,


TODO
    Brightness? brightness,
    VisualDensity? visualDensity,
    MaterialColor? primarySwatch,
    Brightness? primaryColorBrightness,
    Brightness? accentColorBrightness,
    InteractiveInkFeatureFactory? splashFactory,
    ButtonThemeData? buttonTheme,
    ToggleButtonsThemeData? toggleButtonsTheme,
    String? fontFamily,
    TextTheme? textTheme,
    TextTheme? primaryTextTheme,
    TextTheme? accentTextTheme,
    InputDecorationTheme? inputDecorationTheme,
    IconThemeData? iconTheme,
    IconThemeData? primaryIconTheme,
    IconThemeData? accentIconTheme,
    SliderThemeData? sliderTheme,
    TabBarTheme? tabBarTheme,
    TooltipThemeData? tooltipTheme,
    CardTheme? cardTheme,
    ChipThemeData? chipTheme,
    TargetPlatform? platform,
    MaterialTapTargetSize? materialTapTargetSize,
    bool? applyElevationOverlayColor,
    PageTransitionsTheme? pageTransitionsTheme,
    AppBarTheme? appBarTheme,
    ScrollbarThemeData? scrollbarTheme,
    BottomAppBarTheme? bottomAppBarTheme,
    ColorScheme? colorScheme,
    DialogTheme? dialogTheme,
    FloatingActionButtonThemeData? floatingActionButtonTheme,
    NavigationRailThemeData? navigationRailTheme,
    Typography? typography,
    NoDefaultCupertinoThemeData? cupertinoOverrideTheme,
    SnackBarThemeData? snackBarTheme,
    BottomSheetThemeData? bottomSheetTheme,
    PopupMenuThemeData? popupMenuTheme,
    MaterialBannerThemeData? bannerTheme,
    DividerThemeData? dividerTheme,
    ButtonBarThemeData? buttonBarTheme,
    BottomNavigationBarThemeData? bottomNavigationBarTheme,
    TimePickerThemeData? timePickerTheme,
    TextButtonThemeData? textButtonTheme,
    ElevatedButtonThemeData? elevatedButtonTheme,
    OutlinedButtonThemeData? outlinedButtonTheme,
    TextSelectionThemeData? textSelectionTheme,
    DataTableThemeData? dataTableTheme,
    CheckboxThemeData? checkboxTheme,
    RadioThemeData? radioTheme,
    SwitchThemeData? switchTheme,
    bool? fixTextFieldOutlineLabel,
 */

class CustomThemeProvider extends InheritedWidget {
  const CustomThemeProvider({
    Key? key,
    required this.theme,
    required this.update,
    required Widget child,
  }) : super(key: key, child: child);

  final CustomTheme theme;
  final void Function(VoidCallback) update;

  static CustomThemeProvider of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<CustomThemeProvider>();
    assert(result != null, 'No CustomThemeProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(CustomThemeProvider old) => true;
}

class CustomThemeContainer extends StatefulWidget {
  const CustomThemeContainer({
    Key? key,
    required this.theme,
    required this.child,
  }) : super(key: key);

  final CustomTheme theme;
  final Widget child;

  @override
  _CustomThemeContainerState createState() => _CustomThemeContainerState();
}

class _CustomThemeContainerState extends State<CustomThemeContainer> {
  void _update(VoidCallback callback) {
    setState(callback);
  }

  @override
  Widget build(BuildContext context) {
    return CustomThemeProvider(
      theme: widget.theme,
      update: _update,
      child: widget.child,
    );
  }
}
