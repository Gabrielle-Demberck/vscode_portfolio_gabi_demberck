import 'package:flutter/material.dart';

class SideMenuIconButton extends StatefulWidget {
  final bool isSelected;
  final IconData icon;
  final void Function() onTap;
  const SideMenuIconButton({
    super.key,
    this.isSelected = false,
    required this.icon,
    required this.onTap,
  });

  @override
  State<SideMenuIconButton> createState() => _SideMenuIconButtonState();
}

class _SideMenuIconButtonState extends State<SideMenuIconButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      onTap: widget.onTap,
      child: Container(
        width: 57,
        height: 50,
        decoration: BoxDecoration(
          border: widget.isSelected
              ? const Border(
                  left: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                )
              : null,
        ),
        padding: EdgeInsets.zero,
        child: Icon(
          widget.icon,
          color: widget.isSelected || isHovered ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}
