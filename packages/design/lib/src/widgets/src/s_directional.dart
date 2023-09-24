part of widgets;

class SDirectional extends StatelessWidget {
  final Widget child;
  final bool forceEnglish;

  const SDirectional({
    Key? key,
    required this.child,
    this.forceEnglish = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = Localizations.localeOf(context).languageCode;
    return Directionality(
      textDirection: lang.contains('ar') && !forceEnglish
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: child,
    );
  }
}
