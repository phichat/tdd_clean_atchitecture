part of widgets;

const Duration _snackBarDisplayDuration = Duration(milliseconds: 4000);

class SSnackbar extends SnackBar {
  const SSnackbar._(
    Widget content, {
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    SnackBarBehavior? behavior,
    SnackBarAction? action,
    bool? showCloseIcon,
    Color? closeIconColor,
    Duration duration = _snackBarDisplayDuration,
    Animation<double>? animation,
    void Function()? onVisible,
    DismissDirection dismissDirection = DismissDirection.down,
    Clip clipBehavior = Clip.hardEdge,
  }) : super(
          content: content,
          backgroundColor: backgroundColor,
          elevation: elevation,
          margin: margin,
          padding: padding,
          width: width,
          shape: shape,
          behavior: behavior,
          action: action,
          showCloseIcon: showCloseIcon,
          closeIconColor: closeIconColor,
          duration: duration,
          animation: animation,
          onVisible: onVisible,
          dismissDirection: dismissDirection,
          clipBehavior: clipBehavior,
        );

  SSnackbar.alert(
    Widget content, {
    String title = 'G KULL',
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    SnackBarBehavior? behavior,
    SnackBarAction? action,
    bool? showCloseIcon,
    Color? closeIconColor,
    Duration duration = _snackBarDisplayDuration,
    Animation<double>? animation,
    void Function()? onVisible,
    DismissDirection dismissDirection = DismissDirection.down,
    Clip clipBehavior = Clip.hardEdge,
  }) : this._(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SText.bodyMedium(
                    title,
                    style: const TextStyle(color: SColors.kWhite),
                  ),
                  const Spacer(),
                  SText.bodySmall(
                    intl.DateFormat.Hm().format(DateTime.now()),
                    style: const TextStyle(color: SColors.kWhite),
                  )
                ],
              ),
              SDivider.h(1, color: SColors.kWhite)
                  .sPaddingV(LayoutConstrains.s3),
              content,
            ],
          ),
          backgroundColor: backgroundColor,
          elevation: elevation,
          margin: margin,
          padding: padding,
          width: width,
          shape: shape,
          behavior: behavior,
          action: action,
          showCloseIcon: showCloseIcon,
          closeIconColor: closeIconColor,
          duration: duration,
          animation: animation,
          onVisible: onVisible,
          dismissDirection: dismissDirection,
          clipBehavior: clipBehavior,
        );

  SSnackbar.copied(
    String title,
    Widget content, {
    Color? backgroundColor,
    double? elevation,
    EdgeInsetsGeometry? margin,
    EdgeInsetsGeometry? padding,
    double? width,
    ShapeBorder? shape,
    SnackBarBehavior? behavior,
    SnackBarAction? action,
    bool? showCloseIcon,
    Color? closeIconColor,
    Duration duration = _snackBarDisplayDuration,
    Animation<double>? animation,
    void Function()? onVisible,
    DismissDirection dismissDirection = DismissDirection.down,
    Clip clipBehavior = Clip.hardEdge,
  }) : this._(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SText.bodyMedium(
                    title,
                    style: const TextStyle(color: SColors.kWhite),
                  ),
                  const Spacer(),
                  SText.bodySmall(
                    intl.DateFormat.Hm().format(DateTime.now()),
                    style: const TextStyle(color: SColors.kWhite),
                  )
                ],
              ),
              SDivider.h(1, color: SColors.kWhite)
                  .sPaddingV(LayoutConstrains.s3),
              content,
            ],
          ),
          backgroundColor: backgroundColor,
          elevation: elevation,
          margin: margin,
          padding: padding,
          width: width,
          shape: shape,
          behavior: behavior,
          action: action,
          showCloseIcon: showCloseIcon,
          closeIconColor: closeIconColor,
          duration: duration,
          animation: animation,
          onVisible: onVisible,
          dismissDirection: dismissDirection,
          clipBehavior: clipBehavior,
        );
}
