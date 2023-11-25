import 'package:flutter/material.dart';
import 'appbar/tab_item_widget.dart';

class TabsWidget extends StatefulWidget implements PreferredSizeWidget {
  final bool isSelected;
  final PageController pageController;
  final List<String> tabs;
  final int currentPage;

  const TabsWidget({
    super.key,
    required this.isSelected,
    required this.pageController,
    required this.tabs,
    required this.currentPage,
  });
  @override
  Size get preferredSize => const Size.fromHeight(40);
  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tabs.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            widget.pageController.jumpToPage(index);
          },
          child: TabItemWidget(
            isSelected: widget.currentPage == index.toDouble(),
            label: widget.tabs[index],
          ),
        );
      },
    );
  }
}
