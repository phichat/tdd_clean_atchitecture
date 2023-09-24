part of '../theme.dart';

DataTableThemeData dataTableLightThemeData = DataTableThemeData(
  columnSpacing: 24,
  headingRowColor: MaterialStateProperty.all(Colors.black12),
  decoration: BoxDecoration(
    borderRadius: SRadius.bRC16,
    border: Border.all(color: Colors.black12),
  ),
  dataTextStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: SColors.kBlack,
  ),
);

DataTableThemeData dataTableDarkThemeData = DataTableThemeData(
  columnSpacing: 24,
  headingRowColor: MaterialStateProperty.all(Colors.white10),
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(SRadius.r16)),
    border: Border.all(color: Colors.white10),
  ),
  dataTextStyle: const TextStyle(
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontSize: 12,
  ),
);
