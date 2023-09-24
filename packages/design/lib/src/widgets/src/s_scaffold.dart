part of widgets;

abstract class SScaffold extends StatefulWidget {
  final Widget? title, body, bottomNavigationBar;
  final List<Widget>? appBarActtions;

  const SScaffold({
    super.key,
    this.title,
    this.appBarActtions,
    this.body,
    this.bottomNavigationBar,
  });

  factory SScaffold.normal({
    Widget? title,
    Widget? body,
    Widget? bottomNavigationBar,
  }) {
    return _SScaffoldNormal(
      title: title,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  factory SScaffold.extendBodyBehindAppBar({
    Widget? title,
    Widget? body,
    Widget? bottomNavigationBar,
  }) {
    return _SScaffoldExtendBodyBehindAppBar(
      title: title,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

  factory SScaffold.coverPage({
    Widget? title,
    List<Widget>? appBarActtions,
    Widget? body,
    Widget? bottomNavigationBar,
    double? backgroundHeight,
  }) {
    return _ScaffoldCoverPage(
      title: title,
      appBarActtions: appBarActtions,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      backgroundHeight: backgroundHeight ?? 250,
    );
  }
}

///
class _SScaffoldNormal extends SScaffold {
  final Widget? title, body, bottomNavigationBar;

  const _SScaffoldNormal({
    this.title,
    this.body,
    this.bottomNavigationBar,
  }) : super();

  @override
  State<_SScaffoldNormal> createState() => __SScaffoldNormalState();
}

class __SScaffoldNormalState extends State<_SScaffoldNormal>
    with TickerProviderStateMixin {
  late AnimationController _colorAnimationController;

  late Animation _colorTween, _iconTween;

  @override
  void initState() {
    super.initState();

    _colorAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));

    _colorTween = ColorTween(begin: SColors.kTransparent, end: SColors.kWhite)
        .animate(_colorAnimationController);
    _iconTween = ColorTween(begin: SColors.kWhite, end: SColors.kBlack1)
        .animate(_colorAnimationController);
  }

  @override
  void dispose() {
    _colorAnimationController.dispose();
    super.dispose();
  }

  bool scrollListener(ScrollNotification scrollInfo) {
    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _colorAnimationController.animateTo(scrollInfo.metrics.pixels / 80);

      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: scrollListener,
      child: AnimatedBuilder(
        animation: _colorAnimationController,
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: _colorAnimationController.value == 1.0
                      ? SBoxShadow.appBar
                      : null,
                ),
                child: AppBar(
                  title: widget.title,
                  backgroundColor: _colorTween.value,
                  titleTextStyle: sDarkThemeData(context)
                      .appBarTheme
                      .titleTextStyle!
                      .copyWith(color: _iconTween.value),
                  iconTheme: sDarkThemeData(context)
                      .appBarTheme
                      .iconTheme!
                      .copyWith(color: _iconTween.value),
                ),
              ),
            ),
            body: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.only(
                bottom: LayoutConstrains.s3,
                top: 100,
              ),
              child: widget.body,
            ),
            bottomNavigationBar: widget.bottomNavigationBar,
          );
        },
      ),
    );
  }
}

///
class _SScaffoldExtendBodyBehindAppBar extends SScaffold {
  const _SScaffoldExtendBodyBehindAppBar({
    Widget? title,
    Widget? body,
    Widget? bottomNavigationBar,
  }) : super(
          title: title,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
        );

  @override
  State<_SScaffoldExtendBodyBehindAppBar> createState() =>
      __SScaffoldExtendBodyBehindAppBarState();
}

class __SScaffoldExtendBodyBehindAppBarState
    extends State<_SScaffoldExtendBodyBehindAppBar>
    with TickerProviderStateMixin {
  late AnimationController _colorAnimationController;

  late Animation _colorTween;

  @override
  void initState() {
    super.initState();

    _colorAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));

    _colorTween =
        ColorTween(begin: SColors.kTransparent, end: SColors.kPrimary1Color)
            .animate(_colorAnimationController);
  }

  @override
  void dispose() {
    _colorAnimationController.dispose();
    super.dispose();
  }

  bool scrollListener(ScrollNotification scrollInfo) {
    bool scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _colorAnimationController.animateTo(scrollInfo.metrics.pixels / 80);

      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: scrollListener,
      child: AnimatedBuilder(
        animation: _colorAnimationController,
        builder: (context, child) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: _colorAnimationController.value == 1.0
                      ? SBoxShadow.appBar
                      : null,
                ),
                child: SAppBar.dark(
                  title: widget.title,
                  backgroundColor: _colorTween.value,
                ),
              ),
            ),
            body: widget.body,
            bottomNavigationBar: widget.bottomNavigationBar,
          );
        },
      ),
    );
  }
}

///
class _ScaffoldCoverPage extends SScaffold {
  final double backgroundHeight;

  const _ScaffoldCoverPage({
    Widget? title,
    List<Widget>? appBarActtions,
    Widget? body,
    Widget? bottomNavigationBar,
    required this.backgroundHeight,
  }) : super(
          title: title,
          appBarActtions: appBarActtions,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
        );

  @override
  State<_ScaffoldCoverPage> createState() => __ScaffoldCoverPageState();
}

class __ScaffoldCoverPageState extends State<_ScaffoldCoverPage>
    with TickerProviderStateMixin {
  late AnimationController _colorAnimationController;

  late Animation _colorTween, _iconTween;

  @override
  void initState() {
    super.initState();

    _colorAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 0));

    _colorTween = ColorTween(begin: SColors.kTransparent, end: SColors.kWhite)
        .animate(_colorAnimationController);
    _iconTween = ColorTween(begin: SColors.kWhite, end: SColors.kBlack1)
        .animate(_colorAnimationController);
  }

  @override
  void dispose() {
    _colorAnimationController.dispose();
    super.dispose();
  }

  bool scrollListener(ScrollNotification? scrollInfo) {
    bool scroll = false;
    if (scrollInfo != null && scrollInfo.metrics.axis == Axis.vertical) {
      _colorAnimationController.animateTo(scrollInfo.metrics.pixels / 80);

      return scroll = true;
    }
    return scroll;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _BackgroundPainter(height: widget.backgroundHeight),
      child: NotificationListener<ScrollNotification>(
        onNotification: scrollListener,
        child: AnimatedBuilder(
          animation: _colorAnimationController,
          builder: (context, child) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              extendBodyBehindAppBar: true,
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: _colorAnimationController.value == 1.0
                        ? SBoxShadow.appBar
                        : null,
                  ),
                  child: AppBar(
                    title: widget.title,
                    backgroundColor: _colorTween.value,
                    titleTextStyle: sDarkThemeData(context)
                        .appBarTheme
                        .titleTextStyle!
                        .copyWith(color: _iconTween.value),
                    iconTheme: sDarkThemeData(context)
                        .appBarTheme
                        .iconTheme!
                        .copyWith(color: _iconTween.value),
                    actions: widget.appBarActtions,
                  ),
                ),
              ),
              body: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: LayoutConstrains.s3,
                  top: 100,
                ),
                child: widget.body,
              ),
              bottomNavigationBar: widget.bottomNavigationBar,
            );
          },
        ),
      ),
    );
  }
}

///
class _BackgroundPainter extends CustomPainter {
  final double height;

  _BackgroundPainter({required this.height});

  @override
  void paint(Canvas canvas, Size size) {
    var gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0316, 1],
      colors: [
        SColors.kPrimary1Color,
        SColors.kPrimary2Color,
      ],
    );
    final rect = Rect.fromLTWH(0, 0, size.width, size.height * .4);
    var fillPaint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;
    var fillPaintBg = Paint()
      ..color = SColors.kWhite
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;
    canvas.drawRect(Rect.fromLTRB(0, 0, size.width, height), fillPaint);
    canvas.drawRect(
        Rect.fromLTRB(0, height, size.width, size.height), fillPaintBg);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
