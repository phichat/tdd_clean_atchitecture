part of widgets;

abstract class SButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  const SButton({Key? key, this.onPressed, this.text}) : super(key: key);
  factory SButton.filled(
      {Key? key, VoidCallback? onPressed, String? text, Color? textColor}) {
    return _Filled(onPressed: onPressed, text: text, textColor: textColor);
  }
  factory SButton.text(
      {Key? key, VoidCallback? onPressed, String? text, Color? color}) {
    return _Text(onPressed: onPressed, text: text, color: color);
  }
  factory SButton.textTitleMedium(
      {Key? key, VoidCallback? onPressed, String? text, Color? color}) {
    return _TextTitleMedium(onPressed: onPressed, text: text, color: color);
  }
  factory SButton.outLine({
    Key? key,
    VoidCallback? onPressed,
    String? text,
    Color? texColor,
    double? borderRadius,
    Color? borderColor,
  }) {
    return _OutLine(
      onPressed: onPressed,
      text: text,
      texColor: texColor,
      borderRadius: borderRadius,
      borderColor: borderColor,
    );
  }
  factory SButton.outLineIcon({
    Key? key,
    VoidCallback? onPressed,
    String? text,
    Color? texColor,
    double? borderRadius,
    Color? borderColor,
    Color? iconColor,
    String? svgPath,
    bool isSmall = true,
  }) {
    return _OutLineIcons(
      onPressed: onPressed,
      text: text,
      texColor: texColor,
      borderRadius: borderRadius,
      borderColor: borderColor,
      svgPath: svgPath,
      iconColor: iconColor,
      isSmall: isSmall,
    );
  }
  @override
  Widget build(BuildContext context) {
    return _Filled(
      onPressed: onPressed,
      text: text,
    );
  }
}

class _Filled extends SButton {
  final VoidCallback? onPressed;
  final String? text;
  final Color? textColor;
  const _Filled({
    this.onPressed,
    this.text,
    this.textColor,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: SText.bodyMedium(
        "$text",
        style: context.bodyMedium!.copyWith(
          color: textColor ?? Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _Text extends SButton {
  final Color? color;
  const _Text({VoidCallback? onPressed, String? text, this.color})
      : super(text: text, onPressed: onPressed);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: onPressed,
        child: SText.bodyMedium("$text",
            style: context.labelLarge!.copyWith(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              color: color,
            )));
  }
}

class _TextTitleMedium extends SButton {
  final Color? color;
  const _TextTitleMedium({VoidCallback? onPressed, String? text, this.color})
      : super(text: text, onPressed: onPressed);
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        onPressed: onPressed,
        child: SText.bodyMedium("$text",
            style: context.labelLarge!.copyWith(
              fontWeight: FontWeight.bold,
              color: color ?? SColors.kVividBlue,
            )));
  }
}

class _OutLine extends SButton {
  final Color? texColor;
  final Color? borderColor;
  final double? borderRadius;
  const _OutLine({
    VoidCallback? onPressed,
    String? text,
    this.texColor,
    this.borderColor,
    this.borderRadius,
  }) : super(text: text, onPressed: onPressed);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        side: BorderSide(color: borderColor ?? Colors.grey),
      ),
      child: SText.bodyMedium(
        '$text',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeight.bold, color: texColor),
      ),
    );
  }
}

class _OutLineIcons extends SButton {
  final Color? texColor;
  final Color? borderColor;
  final Color? iconColor;
  final double? borderRadius;
  final String? svgPath;
  final bool isSmall;
  const _OutLineIcons({
    VoidCallback? onPressed,
    String? text,
    this.texColor,
    this.borderColor,
    this.borderRadius,
    this.svgPath,
    this.iconColor,
    required this.isSmall,
  }) : super(text: text, onPressed: onPressed);
  @override
  Widget build(BuildContext context) {
    TextStyle style;
    if (isSmall) {
      style = context.titleSmall!.copyWith(fontSize: 12);
    } else {
      style = context.bodyMedium!;
    }
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        side: BorderSide(color: borderColor ?? Colors.grey),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: SText.bodyMedium(
              '$text',
              style: style.copyWith(
                fontWeight: FontWeight.bold,
                color: texColor,
              ),
            ),
          ),
          if (svgPath != null) const SSizedBox.h8(),
          if (svgPath != null)
            SvgPicture.asset(
              svgPath!,
              height: 15,
              color: iconColor,
              width: 15,
            ),
        ],
      ),
    );
  }
}
