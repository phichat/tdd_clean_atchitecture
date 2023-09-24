part of widgets;

class SLoading extends StatelessWidget {
  const SLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: SPadding.all16(
            child: Center(
      child: CircularProgressIndicator.adaptive(),
    )));
  }
}
