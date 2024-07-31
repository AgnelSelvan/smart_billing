import 'package:flutter/material.dart';

class BorderedCollection extends StatelessWidget {
  const BorderedCollection({
    super.key,
    this.child,
    required this.title,
  });
  final Widget? child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey[200]!,
                width: 2,
              ),
            ),
            child: child ?? const SizedBox(),
          ),
        ],
      ),
    );
  }
}
