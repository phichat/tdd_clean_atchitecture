part of widgets;

class SSearchBar extends StatefulWidget {
  const SSearchBar({
    Key? key,
    this.onChanged,
    this.onTap,
    this.cancelText,
    this.hintText,
  }) : super(key: key);
  final ValueChanged<String>? onChanged;
  final Function()? onTap;
  final String? cancelText;
  final String? hintText;

  @override
  State<SSearchBar> createState() => _SSearchBarState();
}

class _SSearchBarState extends State<SSearchBar> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData appTheme = Theme.of(context);

    return Column(
      children: [
        SDivider.h(1),
        Container(
          color: Colors.white,
          child: SPadding.h8(
            child: TextFormField(
              controller: _controller,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                filled: false,
                hintText: widget.hintText ?? 'Search list',
                hintStyle: appTheme.textTheme.bodyLarge!.copyWith(
                    color: appTheme.textTheme.bodySmall!.color,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                prefixIcon:
                    Icon(Icons.search, color: appTheme.primaryColor, size: 20),
                suffixIcon: _controller.text.isNotEmpty
                    ? SizedBox(
                        width: 75,
                        child: Center(
                          child: InkWell(
                            child: SText.titleSmall(
                              widget.cancelText ?? "cancel",
                              textAlign: TextAlign.center,
                              style: appTheme.textTheme.bodySmall!
                                  .copyWith(color: appTheme.primaryColor),
                            ),
                            onTap: () {
                              final FocusScopeNode currentFocus =
                                  FocusScope.of(context);
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                              _controller.clear();
                              widget.onTap!();
                            },
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
              onChanged: widget.onChanged,
            ),
          ),
        ),
        SDivider.h(1)
      ],
    );
  }
}
