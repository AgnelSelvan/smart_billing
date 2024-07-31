import 'package:flutter/material.dart';
import 'package:smart_billing/core/widgets/divider.dart';
import 'package:smart_billing/core/widgets/listing_data_tile.dart';

class AppTable extends StatelessWidget {
  AppTable({
    super.key,
    required this.headers,
    required this.data,
    required this.flexWidth,
    this.expandedWidget,
    this.onDoubleTap,
  }) : assert(() {
          if (data.isNotEmpty) {
            final cellCount = data.first.length;
            if (data.any((element) => element.length != cellCount)) {
              throw FlutterError(
                'Data length is not equal',
              );
            }
          }
          return true;
        }());
  final List<String> headers;
  final List<List<String>> data;
  final List<int> flexWidth;
  final Widget Function(int)? expandedWidget;
  final Function(int)? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IgnorePointer(
          child: ExpansionTile(
            tilePadding: EdgeInsets.zero,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [...headers]
                  .asMap()
                  .map(
                    (index, value) => MapEntry(
                      index,
                      Expanded(
                        flex: flexWidth[index],
                        child: SizedBox(
                          height: 44,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList(),
            ),
            trailing: const SizedBox(),
          ),
        ),
        const AppDivider(),
        ...data
            .asMap()
            .map(
              (mainIndex, value) => MapEntry(
                mainIndex,
                AppExpansionForSingleDataInListing(
                  flexWidth: flexWidth,
                  expandedWidget: expandedWidget,
                  datas: value,
                  mainIndex: mainIndex,
                  onDoubleTap: onDoubleTap,
                ),
              ),
            )
            .values
      ],
    );
  }
}
