part of widgets;

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 4,
        dashSpace = 3,
        startY = 0,
        outerThumbSize = 3.0,
        innerThumbSize = 2.0;

    final paint = Paint()
      ..color = SColors.kGrey
      ..strokeWidth = size.width;
    final outerDot = Paint()
      ..color = SColors.kGrey
      ..strokeWidth = size.width;
    final innerDot = Paint()
      ..color = SColors.kWhite
      ..strokeWidth = size.width;

    final firstOffset = Offset(0, startY - (dashSpace * 2));
    canvas.drawCircle(firstOffset, outerThumbSize, outerDot);
    canvas.drawCircle(firstOffset, innerThumbSize, innerDot);

    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }

    final lastOffset = Offset(0, (startY + dashHeight) - 1);
    canvas.drawCircle(lastOffset, outerThumbSize, outerDot);
    canvas.drawCircle(lastOffset, innerThumbSize, innerDot);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
