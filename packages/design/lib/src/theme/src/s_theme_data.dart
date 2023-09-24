part of '../theme.dart';

ThemeData sDarkThemeData(BuildContext context) {
  return ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: SColors.kTransparent,
    brightness: Brightness.dark,
    primaryTextTheme: GoogleFonts.notoSansThaiTextTheme(),
    primarySwatch: SColors.kPrimaryMaterial,
    primaryColor: SColors.kBrightBlue,
    scaffoldBackgroundColor: SColors.kBlack,
    iconTheme: IconTheme.iconDarkTheme,
    textTheme: textThemeDark,
    elevatedButtonTheme: elevatedButtonThemeData,
    outlinedButtonTheme: outlinedButtonTheme(borderColor: SColors.kWhite20),
    textButtonTheme: textButtonDarkTheme,
    inputDecorationTheme: darkInputDecorationTheme,
    checkboxTheme: checkboxTheme,
    appBarTheme: appBarDarkTheme,
    scrollbarTheme: scrollbarThemeData,
    dataTableTheme: dataTableDarkThemeData,
    tabBarTheme: tabBarDarkTheme,
    dividerTheme: const DividerThemeData(color: SColors.kLightGrey),
    bottomSheetTheme: const BottomSheetThemeData(
        dragHandleSize: Size(40, 4), dragHandleColor: SColors.kGREY),
  );
}

ThemeData sLightThemeData(BuildContext context) {
  return ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: SColors.kTransparent,
    brightness: Brightness.light,
    primaryTextTheme: GoogleFonts.notoSansThaiTextTheme(),
    primarySwatch: SColors.kPrimaryMaterial,
    primaryColor: SColors.kBrightBlue,
    scaffoldBackgroundColor: SColors.kBackground,
    iconTheme: IconTheme.iconLightTheme,
    elevatedButtonTheme: elevatedButtonThemeData,
    outlinedButtonTheme: outlinedButtonTheme(),
    textButtonTheme: textButtonLightTheme,
    inputDecorationTheme: lightInputDecorationTheme,
    checkboxTheme: checkboxTheme.copyWith(
      side: const BorderSide(color: SColors.kBlack40),
    ),
    appBarTheme: appBarLightTheme,
    scrollbarTheme: scrollbarThemeData,
    dataTableTheme: dataTableLightThemeData,
    tabBarTheme: tabBarLightTheme,
    snackBarTheme: snackBarThemeData,
    dividerTheme: const DividerThemeData(color: SColors.kLightGrey),
    bottomSheetTheme: const BottomSheetThemeData(
        dragHandleSize: Size(40, 4), dragHandleColor: SColors.kGREY),
  );
}
