part of widgets;

typedef AsyncSnapshotCallback<T> = Widget Function(
  BuildContext context,
  T value,
);

class AsyncSnapShotBuilder<T> extends StatelessWidget {
  final Stream<T> stream;
  final AsyncSnapshotCallback<T?>? onNone;
  final AsyncSnapshotCallback<T?>? onActive;
  final AsyncSnapshotCallback<T?>? onWaiting;
  final AsyncSnapshotCallback<T?>? onDone;

  const AsyncSnapShotBuilder(
      {Key? key,
      required this.stream,
      this.onNone,
      this.onActive,
      this.onWaiting,
      this.onDone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
        stream: stream,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              final callback = onNone ?? (_, __) => const SizedBox.shrink();
              return callback(context, snapshot.data);

            case ConnectionState.waiting:
              final callback = onWaiting ??
                  (_, __) => const CircularProgressIndicator.adaptive();
              return callback(context, snapshot.data);

            case ConnectionState.active:
              final callback = onActive ?? (_, __) => const SizedBox.shrink();
              return callback(context, snapshot.data);

            case ConnectionState.done:
              final callback = onDone ?? (_, __) => const SizedBox.shrink();
              return callback(context, snapshot.data);
          }
        });
  }
}
