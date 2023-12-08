import 'package:flutter/material.dart';
import '../../../about/about_page.dart';
import '../../../home/home_page.dart';
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
                const HomePage(),
                const AboutPage(),
                Container(),
                Container(color: Colors.transparent),
                Container(color: Colors.transparent),
              ]),
        ),
      ),
    );
  }
}
