part of '../theme.dart';

extension SSearchAppbarTheme on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;

  ThemeData get appbarSearch => theme.copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.brightness == Brightness.dark
              ? Colors.grey[900]
              : SColors.kBackground,
          elevation: 0,
          titleSpacing: 0,
          titleTextStyle: textTheme.bodyLarge!.copyWith(
              color: textTheme.bodySmall!.color, fontWeight: FontWeight.normal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SRadius.texFiled),
            borderSide: const BorderSide(
              color: SColors.kGreyborder,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SRadius.texFiled),
            borderSide: const BorderSide(
              color: SColors.kIceBlue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SRadius.texFiled),
            borderSide: const BorderSide(
              color: SColors.kGreyborder,
            ),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SRadius.texFiled),
              borderSide: BorderSide.none),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SRadius.texFiled),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: SColors.kPaleGrey,
        ),
      );
}
