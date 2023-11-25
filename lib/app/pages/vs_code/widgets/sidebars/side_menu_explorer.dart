import 'package:flutter/material.dart';

class SideMenuExplorer extends StatefulWidget {
  final Map<String, IconData> tabItems;
  final bool isSelected;
  final PageController pageController;
  const SideMenuExplorer({
    super.key,
    this.isSelected = false,
    required this.tabItems,
    required this.pageController,
  });

  @override
  State<SideMenuExplorer> createState() => _SideMenuExplorerState();
}

class _SideMenuExplorerState extends State<SideMenuExplorer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final tabKeys = widget.tabItems.keys.toList();
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: const Color(0xff1c1b1f),
        border: widget.isSelected
            ? const Border(
                left: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
              )
            : null,
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text(
              'EXPLORER',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              height: 25,
              width: 200,
              color: const Color(0xff282a36),
              padding: const EdgeInsets.only(left: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder,
                    color: Colors.blueGrey,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Portfolio',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: tabKeys.length,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => widget.pageController.jumpToPage(index),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                        left: 20,
                        bottom: 2,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.code,
                            color: Colors.blue,
                            size: 18,
                          ),
                          const SizedBox(width: 5),
                          Text(tabKeys[index]),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
