import 'package:flutter/material.dart';
import 'package:smart_billing/core/widgets/divider.dart';

class AppExpansionForSingleDataInListing extends StatefulWidget {
  const AppExpansionForSingleDataInListing({
    super.key,
    required this.flexWidth,
    required this.expandedWidget,
    required this.datas,
    required this.mainIndex,
    this.onDoubleTap,
  });

  final List<int> flexWidth;
  final List<String> datas;
  final Widget Function(int p1)? expandedWidget;
  final Function(int p1)? onDoubleTap;
  final int mainIndex;

  @override
  State<AppExpansionForSingleDataInListing> createState() =>
      _AppExpansionForSingleDataInListingState();
}

class _AppExpansionForSingleDataInListingState
    extends State<AppExpansionForSingleDataInListing>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
  late Animation<double> animation =
      Tween(begin: 0.0, end: 10.0).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
          onDoubleTap: () {
            widget.onDoubleTap?.call(widget.mainIndex);
          },
          child: Container(
            margin: EdgeInsets.all(animation.value),
            padding: EdgeInsets.all(animation.value),
            decoration: BoxDecoration(
              border: isExpanded
                  ? Border.all(color: Colors.grey.withOpacity(0.4))
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Theme(
                  data: ThemeData().copyWith(
                    dividerColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    onExpansionChanged: (val) {
                      isExpanded = val;
                      if (val) {
                        _controller.forward();
                      } else {
                        _controller.reverse();
                      }

                      setState(() {});
                    },
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.datas
                          .asMap()
                          .map(
                            (index, e) => MapEntry(
                              index,
                              Expanded(
                                flex: widget.flexWidth[index],
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[800],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .values
                          .toList(),
                    ),
                    children: [
                      const AppDivider(),
                      const SizedBox(
                        height: 10,
                      ),
                      if (widget.expandedWidget != null)
                        widget.expandedWidget!(widget.mainIndex),
                      const SizedBox(
                        height: 10,
                      ),
                      const AppDivider(),
                    ],
                  ),
                ),
                if (!isExpanded) const AppDivider(),
              ],
            ),
          ),
        );
      },
    );
  }
}
