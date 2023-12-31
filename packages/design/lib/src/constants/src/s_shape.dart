part of '../constants.dart';

abstract class SShapes {
  SShapes._();

  static final sR4 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(SRadius.r4));
  static final sR8 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(SRadius.r8));
  static final sR12 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(SRadius.r12));
  static final sR16 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(SRadius.r16));
  static final sR21 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(SRadius.r21));
  static final sR32 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(SRadius.r32));
  static final sR64 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(SRadius.r64));

  /// { Round 4 - Border 1 }
  static dynamic sR4B1({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r4),
        side: BorderSide(width: SBorders.b1, color: borderColor),
      );

  /// { Round 4 - Border 2 }

  static dynamic sR4B2({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r4),
        side: BorderSide(width: SBorders.b2, color: borderColor),
      );

  /// { Round 4 - Border 3 }

  static dynamic sR4B3({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r4),
        side: BorderSide(width: SBorders.b3, color: borderColor),
      );

  /// { Round 4 - Border 4 }

  static dynamic sR4B4({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r4),
        side: BorderSide(width: SBorders.b4, color: borderColor),
      );

  /// { Round 8 - Border 1 }

  static dynamic sR8B1({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r8),
        side: BorderSide(width: SBorders.b1, color: borderColor),
      );

  /// { Round 8 - Border 2 }

  static dynamic sR8B2({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r8),
        side: BorderSide(width: SBorders.b2, color: borderColor),
      );

  /// { Round 8 - Border 3 }

  static dynamic sR8B3({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r8),
        side: BorderSide(width: SBorders.b3, color: borderColor),
      );

  /// { Round 8 - Border 4 }

  static dynamic sR8B4({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r8),
        side: BorderSide(width: SBorders.b4, color: borderColor),
      );

  /// { Round 12 - Border 1 }

  static dynamic sR12B1({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r12),
        side: BorderSide(width: SBorders.b1, color: borderColor),
      );

  /// { Round 8 - Border 2 }

  static dynamic sR12B2({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r12),
        side: BorderSide(width: SBorders.b2, color: borderColor),
      );

  /// { Round 8 - Border 3 }

  static dynamic sR12B3({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r12),
        side: BorderSide(width: SBorders.b3, color: borderColor),
      );

  /// { Round 8 - Border 4 }

  static dynamic sR12B4({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r12),
        side: BorderSide(width: SBorders.b4, color: borderColor),
      );

  /// { Round 16 - Border 1 }
  static dynamic sR16B1({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r16),
        side: BorderSide(width: SBorders.b1, color: borderColor),
      );

  /// { Round 16 - Border 2 }

  static dynamic sR16B2({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r16),
        side: BorderSide(width: SBorders.b2, color: borderColor),
      );

  /// { Round 16 - Border 3 }

  static dynamic sR16B3({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r16),
        side: BorderSide(width: SBorders.b3, color: borderColor),
      );

  /// { Round 16 - Border 4 }

  static dynamic sR16B4({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r16),
        side: BorderSide(width: SBorders.b4, color: borderColor),
      );

  /// { Round 32 - Border 1 }
  static dynamic sR32B1({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r32),
        side: BorderSide(width: SBorders.b1, color: borderColor),
      );

  /// { Round 16 - Border 2 }

  static dynamic sR32B2({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r32),
        side: BorderSide(width: SBorders.b2, color: borderColor),
      );

  /// { Round 16 - Border 3 }

  static dynamic sR32B3({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r32),
        side: BorderSide(width: SBorders.b3, color: borderColor),
      );

  /// { Round 16 - Border 4 }

  static dynamic sR32B4({Color borderColor = Colors.grey}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SRadius.r32),
        side: BorderSide(width: SBorders.b4, color: borderColor),
      );
}
