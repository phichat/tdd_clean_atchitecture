part of '../constants.dart';

extension SBoxShadow on Container {
  static List<BoxShadow> get pannel {
    return const [
      BoxShadow(
        blurRadius: 5.0,
        spreadRadius: 2.0,
        color: SColors.kBlack20,
      )
    ];
  }

  static List<BoxShadow> get bottomNavigationBar {
    return [
      BoxShadow(
        offset: const Offset(0, -4),
        blurRadius: 10.0,
        color: SColors.kBlack.withOpacity(0.08),
      )
    ];
  }

  static List<BoxShadow> get appBar {
    return const [
      BoxShadow(
          offset: Offset(0, 4),
          blurRadius: 10.0,
          color: Color.fromRGBO(0, 0, 0, 0.1))
    ];
  }

  static List<BoxShadow> get card {
    return [
      BoxShadow(
        blurRadius: 10.0,
        spreadRadius: 0,
        color: SColors.kShadows.withOpacity(0.2),
      )
    ];
  }

  static List<BoxShadow> get cardSoft {
    return [
      BoxShadow(
        blurRadius: 10.0,
        spreadRadius: 0,
        color: SColors.kShadows.withOpacity(0.1),
      )
    ];
  }

  static List<BoxShadow> get card2 {
    return [
      BoxShadow(
        blurRadius: 10.0,
        offset: const Offset(0, -4),
        color: SColors.kBlack.withOpacity(0.1),
      )
    ];
  }
}
