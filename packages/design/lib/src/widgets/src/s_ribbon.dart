part of widgets;

abstract class SRibbon extends StatelessWidget {
  final String text;
  const SRibbon({Key? key, required this.text}) : super(key: key);

  factory SRibbon.left(String text) {
    return _RibbonLeft(text: text);
  }
  factory SRibbon.right(String text) {
    return _RibbonRight(text: text);
  }
}

class _RibbonLeft extends SRibbon {
  const _RibbonLeft({required String text}) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: LayoutConstrains.s2,
        horizontal: LayoutConstrains.m2,
      ),
      decoration: const BoxDecoration(
        borderRadius: SRadius.bRR32,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            SColors.kPrimary1Color,
            SColors.kPrimary2Color,
          ],
        ),
      ),
      child: SText.titleMedium(text,
          style: const TextStyle(color: SColors.kWhite)),
    );
  }
}

class _RibbonRight extends SRibbon {
  const _RibbonRight({required String text}) : super(text: text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: LayoutConstrains.s2,
        horizontal: LayoutConstrains.m2,
      ),
      decoration: const BoxDecoration(
        borderRadius: SRadius.bRL32,
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            SColors.kPrimary2Color,
            SColors.kPrimary1Color,
          ],
        ),
      ),
      child: SText.titleMedium(text,
          style: const TextStyle(color: SColors.kWhite)),
    );
  }
}
