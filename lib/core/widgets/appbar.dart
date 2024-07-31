import 'package:flutter/material.dart';

class SmartBillingAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String subTitle;
  final VoidCallback? onBackPress;
  const SmartBillingAppBar({
    super.key,
    required this.title,
    required this.subTitle,
    this.onBackPress,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Row(
        children: [
          GestureDetector(
            onTap: onBackPress ??
                () {
                  Navigator.pop(context);
                },
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey[200]!,
                    width: 2,
                  ),
                ),
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(14),
                child: const Icon(Icons.arrow_back_rounded),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
