part of '../extensions.dart';

extension SContext on BuildContext {
  // Returns the MediaQuery
  MediaQueryData get mq => MediaQuery.of(this);

  /// Returns if Orientation is landscape
  bool get isLandscape => mq.orientation == Orientation.landscape;

  /// Returns same as MediaQuery.of(context).size
  Size get sizePx => mq.size;

  /// Returns same as MediaQuery.of(context).size.width
  double get widthPx => sizePx.width;

  /// Returns same as MediaQuery.of(context).height
  double get heightPx => sizePx.height;

  /// Returns text theme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Returns text theme headline
  TextStyle? get displayLarge => textTheme.displayLarge;

  TextStyle? get displayMedium => textTheme.displayMedium;

  TextStyle? get displaySmall => textTheme.displaySmall;

  /// Returns text theme headline
  TextStyle? get headlineLarge => textTheme.headlineLarge;

  TextStyle? get headlineMedium => textTheme.headlineMedium;

  TextStyle? get headlineSmall => textTheme.headlineSmall;

  /// Returns text theme title
  TextStyle? get titleLarge => textTheme.titleLarge;

  TextStyle? get titleMedium => textTheme.titleMedium;

  TextStyle? get titleSmall => textTheme.titleSmall;

  /// Returns text theme body
  TextStyle? get bodyLarge => textTheme.bodyLarge;

  TextStyle? get bodyMedium => textTheme.bodyMedium;

  TextStyle? get bodySmall => textTheme.bodySmall;

  /// Returns text theme label
  TextStyle? get labelLarge => textTheme.labelLarge;

  TextStyle? get labelMedium => textTheme.labelMedium;

  TextStyle? get labelSmall => textTheme.labelSmall;

  /// Returns icon theme
  IconThemeData get iconTheme => Theme.of(this).iconTheme;

  /// Snackbar
  ScaffoldMessengerState get snackbar => ScaffoldMessenger.of(this);

  openModalBottomSheet({
    required Widget child,
    bool showDragHandle = true,
    bool isScrollControlled = true,
  }) {
    showModalBottomSheet(
        isScrollControlled: isScrollControlled,
        showDragHandle: showDragHandle,
        backgroundColor: SColors.kBackground,
        shape: SShapes.sR12,
        context: this,
        builder: (context) {
          return FractionallySizedBox(heightFactor: .8, child: child);
        });
  }
}
