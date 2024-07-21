import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final double width;
  final bool isSelected;
  final String tabName;
  const AppTabs(
      {super.key,
      required this.width,
      required this.tabName,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 7,
      ),
      width: width * 0.44,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(50),
        ),
        color: isSelected == true ? Colors.white : Colors.transparent,
      ),
      child: Center(
        child: Text(tabName),
      ),
    );
  }
}
