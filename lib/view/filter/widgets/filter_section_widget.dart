// FilterSection: Container for each filter group
import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  final Widget child;

  const FilterSection({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: child),
      ],
    );
  }
}