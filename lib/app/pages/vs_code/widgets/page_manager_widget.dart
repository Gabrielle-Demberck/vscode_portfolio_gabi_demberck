import 'package:flutter/material.dart';
import 'tabs_widget.dart';

class PageManagerWidget extends StatefulWidget {
  const PageManagerWidget({super.key});

  @override
  State<PageManagerWidget> createState() => _PageManagerWidgetState();
}

class _PageManagerWidgetState extends State<PageManagerWidget> {
  final controller = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabsWidget(
        pageController: controller,
        isSelected: false,
        tabs: const [
          'home.dart',
          'about.html',
          'contact.css',
          'projects.js',
          'github.json'
        ],
        currentPage: currentPage,
      ),
      body: Scrollbar(
        controller: controller,
        child: PageView(
            onPageChanged: (value) => setState(() {
                  currentPage = value;
                }),
            controller: controller,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        width: 0.5,
                        color: Colors.white12,
                        strokeAlign: BorderSide.strokeAlignInside),
                    left: BorderSide(
                      color: Colors.white12,
                      width: 0.5,
                    ),
                    right: BorderSide(
                      color: Colors.white12,
                      width: 0.5,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.red,
              )
            ]),
      ),
    );
  }
}
