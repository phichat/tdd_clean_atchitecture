part of widgets;

class SWavePainter extends CustomPainter {
  final double amplitude;
  final double frequency;
  final double phase;
  final double waveHeight;
  final double degree;
  final Color waveColor;

  SWavePainter({
    required this.amplitude,
    required this.frequency,
    required this.phase,
    required this.waveHeight,
    this.degree = 4,
    required this.waveColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.84, 0.9, 1],
      colors: [
        waveColor,
        waveColor.withOpacity(.8),
        SColors.kBackground,
      ],
    );

    final endX = size.width;
    final endY = size.height;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, endY);
    for (double x = 0; x <= endX; x += 1) {
      final y =
          math.sin((x / endX * frequency + phase) * 2 * math.pi) * amplitude +
              endY -
              (waveHeight + x / degree);

      path.lineTo(x, y);
    }

    path.lineTo(endX, endY);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(SWavePainter oldDelegate) => true;
}
