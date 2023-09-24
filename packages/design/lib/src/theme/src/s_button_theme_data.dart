part of '../theme.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
      vertical: LayoutConstrains.m1,
      horizontal: LayoutConstrains.m1,
    ),
    foregroundColor: SColors.kWhite,
    backgroundColor: SColors.kBrightBlue,
    minimumSize: const Size(double.infinity, 32),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(SRadius.r12)),
    ),
    textStyle: ThemeData.light().textTheme.bodyMedium!.copyWith(
          color: SColors.kWhite,
          fontWeight: FontWeight.bold,
        ),
  ),
);

TextButtonThemeData textButtonLightTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: SColors.kVividBlue,
    textStyle: const TextStyle(fontWeight: FontWeight.w600),
  ),
);

TextButtonThemeData textButtonDarkTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: SColors.kWhite,
    iconColor: SColors.kWhite,
    disabledForegroundColor: SColors.kGrey,
    disabledIconColor: SColors.kGrey,
    textStyle: const TextStyle(fontWeight: FontWeight.w600),
  ),
);

OutlinedButtonThemeData outlinedButtonTheme(
    {Color borderColor = SColors.kBlack10}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const SEdgeInsets.all16(),
      foregroundColor: SColors.kVividBlue,
      minimumSize: const Size(double.infinity, 32),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(SRadius.r12)),
      ),
    ),
  );
}
