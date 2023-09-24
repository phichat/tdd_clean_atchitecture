part of '../theme.dart';

TabBarTheme tabBarLightTheme = TabBarTheme(
  labelStyle: ThemeData.light().textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w600,
      ),
  unselectedLabelStyle: ThemeData.dark().textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w600,
      ),
  indicator: BoxDecoration(
    boxShadow: SBoxShadow.card,
    borderRadius: SRadius.bRC32,
    shape: BoxShape.rectangle,
    color: SColors.kWhite,
  ),
);

TabBarTheme tabBarDarkTheme = TabBarTheme(
  labelStyle: ThemeData.dark().textTheme.bodyMedium!.copyWith(
        color: SColors.kWhite,
        fontWeight: FontWeight.w600,
      ),
  labelColor: SColors.kVividBlue,
  unselectedLabelColor: SColors.kIceBlue,
  unselectedLabelStyle: ThemeData.dark().textTheme.bodyMedium!.copyWith(
        color: SColors.kWhite,
        fontWeight: FontWeight.w600,
      ),
  indicator: BoxDecoration(
    boxShadow: SBoxShadow.card,
    borderRadius: SRadius.bRC32,
    shape: BoxShape.rectangle,
    color: SColors.kWhite,
  ),
);
