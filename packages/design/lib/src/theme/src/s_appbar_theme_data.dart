part of '../theme.dart';

AppBarTheme appBarLightTheme = AppBarTheme(
  backgroundColor: SColors.kBackground,
  elevation: 0,
  iconTheme: const IconThemeData(color: SColors.kBlack1),
  titleTextStyle: ThemeData.light().textTheme.titleLarge!.copyWith(
        fontFamily: GoogleFonts.notoSansThai().fontFamily,
        fontWeight: FontWeight.bold,
      ),
);

AppBarTheme appBarDarkTheme = AppBarTheme(
  backgroundColor: SColors.kBlack,
  elevation: 0,
  iconTheme: const IconThemeData(color: SColors.kWhite),
  titleTextStyle: ThemeData.dark().textTheme.titleLarge!.copyWith(
        fontFamily: GoogleFonts.notoSansThai().fontFamily,
        fontWeight: FontWeight.bold,
        color: SColors.kWhite,
      ),
  toolbarTextStyle: const TextStyle(color: SColors.kWhite),
);
