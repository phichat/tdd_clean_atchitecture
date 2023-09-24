part of '../theme.dart';

const InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: SColors.kPaleGrey,
    hintStyle: TextStyle(color: SColors.kGreyish, fontSize: 16),
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: focusedOutlineInputBorder,
    errorBorder: errorOutlineInputBorder,
    contentPadding: contentPadding);

const InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  filled: true,
  hintStyle: TextStyle(color: SColors.kWhite10),
  border: outlineInputBorder,
  enabledBorder: outlineInputBorder,
  focusedBorder: focusedOutlineInputBorder,
  errorBorder: errorOutlineInputBorder,
  contentPadding: contentPadding,
);

const EdgeInsetsGeometry contentPadding = EdgeInsets.symmetric(
  horizontal: LayoutConstrains.s3,
  vertical: LayoutConstrains.s2,
);

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(SRadius.texFiled)),
  borderSide: BorderSide(
    color: SColors.kGreyborder,
  ),
);

const OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(SRadius.texFiled)),
  borderSide: BorderSide(color: SColors.kIceBlue),
);

const OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(SRadius.texFiled)),
  borderSide: BorderSide(
    color: SColors.kRed,
  ),
);

OutlineInputBorder secodaryOutlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(SRadius.texFiled)),
    borderSide: BorderSide(
      color: context.bodyLarge!.color!.withOpacity(0.15),
    ),
  );
}
