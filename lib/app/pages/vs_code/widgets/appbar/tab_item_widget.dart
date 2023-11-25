import 'package:flutter/material.dart';

class TabItemWidget extends StatefulWidget {
  final bool isSelected;
  final String label;
  const TabItemWidget({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  State<TabItemWidget> createState() => _TabItemWidgetState();
}

class _TabItemWidgetState extends State<TabItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                color: widget.isSelected ? Colors.blue : Colors.white12,
                width: 2),
            left: const BorderSide(color: Colors.white12),
            right: const BorderSide(color: Colors.white12),
          ),
        ),
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.code,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                widget.label,
              ),
            ),
            const Icon(
              Icons.close_outlined,
              size: 15,
            )
          ],
        ),
      )
    ]);
  }
}
