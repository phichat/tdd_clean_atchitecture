part of widgets;

abstract class SAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SAppBar({
    Key? key,
    this.title,
    this.leading,
    this.actions,
    this.backgroundColor,
  }) : super(key: key);

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;

  factory SAppBar.dark({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
    Color? backgroundColor,
  }) {
    return _SAppBarDark(
      title: title,
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  factory SAppBar.light({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
    Color? backgroundColor,
  }) {
    return _SAppBarLight(
      title: title,
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SAppBarDark extends SAppBar {
  const _SAppBarDark({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
    Color? backgroundColor,
  }) : super(
          title: title,
          leading: leading,
          actions: actions,
          backgroundColor: backgroundColor,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: sDarkThemeData(context),
      child: AppBar(
        backgroundColor: backgroundColor,
        leading: leading,
        centerTitle: false,
        elevation: 0,
        title: title,
        actions: actions,
      ),
    );
  }
}

class _SAppBarLight extends SAppBar {
  const _SAppBarLight({
    Widget? title,
    Widget? leading,
    List<Widget>? actions,
    Color? backgroundColor,
  }) : super(
          title: title,
          leading: leading,
          actions: actions,
          backgroundColor: backgroundColor,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: sLightThemeData(context),
      child: AppBar(
        backgroundColor: backgroundColor,
        leading: leading,
        centerTitle: false,
        title: title,
        actions: actions,
      ),
    );
  }
}
