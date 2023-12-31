part of widgets;

enum STextStyle {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

class SText extends Text {
  const SText._(
    String text, {
    Key? key,
    required this.textStyle,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : super(
          text,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          overflow: textOverflow,
        );

  const SText.displayLarge(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.displayLarge,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.displayMedium(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.displayMedium,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.displaySmall(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.displaySmall,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.headlineLarge(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.headlineLarge,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.headlineMedium(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.headlineMedium,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.headlineSmall(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.headlineSmall,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.titleLarge(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.titleLarge,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.titleMedium(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.titleMedium,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.titleSmall(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.titleSmall,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.bodyLarge(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.bodyLarge,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.bodyMedium(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.bodyMedium,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.currency(
    String text, {
    Key? key,
    TextStyle? style = const TextStyle(
      color: SColors.kVividBlue,
      fontWeight: FontWeight.bold,
    ),
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.bodyMedium,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.bodySmall(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.bodySmall,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.labelLarge(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.labelLarge,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.labelMedium(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.labelMedium,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  const SText.labelSmall(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? textOverflow,
    int? maxLines,
    Locale? locale,
    String? semanticsLabel,
    StrutStyle? strutStyle,
    TextDirection? textDirection,
    ui.TextHeightBehavior? textHeightBehavior,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
  }) : this._(
          text,
          textStyle: STextStyle.labelSmall,
          key: key,
          style: style,
          textAlign: textAlign,
          textWidthBasis: textWidthBasis,
          textScaleFactor: textScaleFactor,
          strutStyle: strutStyle,
          semanticsLabel: semanticsLabel,
          locale: locale,
          maxLines: maxLines,
          softWrap: softWrap,
          textDirection: textDirection,
          textHeightBehavior: textHeightBehavior,
          textOverflow: textOverflow,
        );

  final STextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    final textTheme = context;
    TextStyle? style;
    switch (textStyle) {
      case STextStyle.displayLarge:
        style = textTheme.displayLarge;
        break;
      case STextStyle.displayMedium:
        style = textTheme.displayMedium;
        break;
      case STextStyle.displaySmall:
        style = textTheme.displaySmall;
        break;
      case STextStyle.headlineLarge:
        style = textTheme.headlineLarge;
        break;
      case STextStyle.headlineMedium:
        style = textTheme.headlineMedium;
        break;
      case STextStyle.headlineSmall:
        style = textTheme.headlineSmall;
        break;
      case STextStyle.titleLarge:
        style = textTheme.titleLarge;
        break;
      case STextStyle.titleMedium:
        style = textTheme.titleMedium;
        break;
      case STextStyle.titleSmall:
        style = textTheme.titleSmall;
        break;
      case STextStyle.bodyLarge:
        style = textTheme.bodyLarge;
        break;
      case STextStyle.bodyMedium:
        style = textTheme.bodyMedium;
        break;
      case STextStyle.bodySmall:
        style = textTheme.bodySmall;
        break;
      case STextStyle.labelLarge:
        style = textTheme.labelLarge;
        break;
      case STextStyle.labelMedium:
        style = textTheme.labelMedium;
        break;
      case STextStyle.labelSmall:
        style = textTheme.labelSmall;
        break;
    }
    return DefaultTextStyle.merge(
      style: style ?? const TextStyle(),
      child: Builder(builder: (context) => super.build(context)),
    );
  }
}
