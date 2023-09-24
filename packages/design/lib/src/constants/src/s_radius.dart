part of '../constants.dart';

abstract class SRadius {
  SRadius._();

  static const button = 12.0;
  static const container = 12.0;
  static const texFiled = 8.0;
  static const chip = 12.0;
  static const checkBox = 6.0;
  static const card = 8.0;

  static const r4 = 4.0;
  static const r6 = 6.0;
  static const r8 = 8.0;
  static const r12 = 12.0;
  static const r16 = 16.0;
  static const r21 = 21.0;
  static const r32 = 32.0;
  static const r64 = 64.0;

  static const rC4 = Radius.circular(r4);
  static const rC6 = Radius.circular(r6);
  static const rC8 = Radius.circular(r8);
  static const rC12 = Radius.circular(r12);
  static const rC16 = Radius.circular(r16);
  static const rC32 = Radius.circular(r32);
  static const rC64 = Radius.circular(r64);

  static final bRC4 = BorderRadius.circular(r4);
  static final bRC6 = BorderRadius.circular(r6);
  static final bRC8 = BorderRadius.circular(r8);
  static final bRC12 = BorderRadius.circular(r12);
  static final bRC16 = BorderRadius.circular(r16);
  static final bRC32 = BorderRadius.circular(r32);
  static final bRC64 = BorderRadius.circular(r64);

  static const bRL6 = BorderRadius.only(topLeft: rC6, bottomLeft: rC6);
  static const bRL8 = BorderRadius.only(topLeft: rC8, bottomLeft: rC8);
  static const bRL12 = BorderRadius.only(topLeft: rC12, bottomLeft: rC12);
  static const bRL16 = BorderRadius.only(topLeft: rC16, bottomLeft: rC16);
  static const bRL32 = BorderRadius.only(topLeft: rC32, bottomLeft: rC32);

  static const bRR12 = BorderRadius.only(topRight: rC12, bottomRight: rC12);
  static const bRR16 = BorderRadius.only(topRight: rC16, bottomRight: rC16);
  static const bRR32 = BorderRadius.only(topRight: rC32, bottomRight: rC32);

  static const bRT4 = BorderRadius.only(topLeft: rC4, topRight: rC4);
  static const bRT6 = BorderRadius.only(topLeft: rC6, topRight: rC6);
  static const bRT8 = BorderRadius.only(topLeft: rC8, topRight: rC8);
  static const bRT12 = BorderRadius.only(topLeft: rC12, topRight: rC12);
  static const bRT16 = BorderRadius.only(topLeft: rC16, topRight: rC16);
  static const bRT32 = BorderRadius.only(topLeft: rC32, topRight: rC32);

  static const bRB12 = BorderRadius.only(bottomLeft: rC12, bottomRight: rC12);
  static const bRB16 = BorderRadius.only(bottomLeft: rC16, bottomRight: rC16);
  static const bRB32 = BorderRadius.only(bottomLeft: rC32, bottomRight: rC32);
}
