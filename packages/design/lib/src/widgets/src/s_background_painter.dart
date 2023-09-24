part of widgets;

class SBackgroundPainter extends CustomPainter {
  final List<Color> colors;
  final double? height;

  SBackgroundPainter({
    this.colors = const [
      SColors.kPrimary1Color,
      SColors.kPrimary2Color,
    ],
    this.height,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var _height = height ?? size.height;
    var gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      // stops: [0.0316, 1],
      colors: colors,
    );
    final rect = Rect.fromLTWH(0, 0, size.width, _height);
    var fillPaint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;
    var fillPaintBg = Paint()
      ..color = SColors.kWhite
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;
    canvas.drawRect(Rect.fromLTRB(0, 0, size.width, _height), fillPaint);
    canvas.drawRect(
        Rect.fromLTRB(0, _height, size.width, size.height), fillPaintBg);
  }

  @override
  bool shouldRepaint(SBackgroundPainter oldDelegate) => false;
}
