part of widgets;

abstract class SDivider extends StatelessWidget {
  const SDivider({Key? key}) : super(key: key);

  factory SDivider.h(double h, {Color? color}) {
    return _Divider(h, color);
  }

  @override
  Widget build(BuildContext context) {
    return Container(height: 1, color: SColors.kPaleGrey);
  }
}

class _Divider extends SDivider {
  final double height;
  final Color? color;

  const _Divider(this.height, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(height: height, color: color ?? SColors.kPaleGrey);
  }
}
