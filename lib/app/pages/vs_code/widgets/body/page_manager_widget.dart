import 'package:flutter/material.dart';
import '../appbar/tabs_widget.dart';

class PageManagerWidget extends StatefulWidget {
  final List<String> tabItems;
  final PageController controller;
  const PageManagerWidget(
      {super.key, required this.tabItems, required this.controller});

  @override
  State<PageManagerWidget> createState() => _PageManagerWidgetState();
}

class _PageManagerWidgetState extends State<PageManagerWidget> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabsWidget(
        pageController: widget.controller,
        isSelected: false,
        tabs: widget.tabItems,
        currentPage: currentPage,
      ),
      body: Scrollbar(
        thickness: 0,
        controller: widget.controller,
        child: Material(
          color: const Color(0xff282a36),
          child: PageView(
              onPageChanged: (value) => setState(() {
                    currentPage = value;
                  }),
              controller: widget.controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 0.5,
                          color: Color(0xff282a36),
                          strokeAlign: BorderSide.strokeAlignInside),
                      left: BorderSide(
                        color: Colors.black12,
                        width: 0.5,
                      ),
                      right: BorderSide(
                        color: Colors.black12,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                Container(color: Colors.transparent),
                Container(),
                Container(color: Colors.transparent),
                Container(color: Colors.transparent),
              ]),
        ),
      ),
    );
  }
}
