part of widgets;

class SNoInternetScreen extends StatelessWidget {
  final String error;
  final String message;
  final String retryText;
  final Function() retry;

  const SNoInternetScreen({
    Key? key,
    required this.retry,
    required this.error,
    required this.message,
    required this.retryText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.wifi_off_rounded,
                size: 80,
              ),
              const SSizedBox.v16(),
              SText.titleMedium(
                error,
                style: context.titleLarge!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SSizedBox.v8(),
              SizedBox(
                width: context.widthPx / 1.5,
                child: SText.titleMedium(
                  message,
                  textAlign: TextAlign.center,
                  style: context.titleMedium!.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SSizedBox.v16(),

              /// buttons
              OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: const BorderSide(color: Colors.grey),
                ))),
                onPressed: retry,
                child: SText.titleMedium(
                  retryText,
                  style: context.titleMedium!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
