import 'package:flutter/material.dart';
import '../sidebars/side_menu_explorer.dart';
import 'page_manager_widget.dart';
import '../sidebars/side_menu_icon_button_widget.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  final pageController = PageController(initialPage: 0);
  final iconsMenuItems = {
    'home.dart': Icons.copy,
    'about.css': Icons.person_pin_circle_outlined,
    'contact.js': Icons.account_tree_outlined,
    'projects.js': Icons.perm_phone_msg_sharp,
  };
  int tappedSideIcon = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Row(
        children: [
          Container(
            width: 57,
            height: size.height - 65,
            color: const Color(0xff343746),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: iconsMenuItems.length,
                    itemBuilder: (context, index) {
                      return SideMenuIconButton(
                        isSelected: tappedSideIcon == index,
                        icon: iconsMenuItems.values.toList().elementAt(index),
                        onTap: () {
                          setState(() {
                            tappedSideIcon = index;
                          });
                          pageController.jumpToPage(index);
                        },
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        pageController.jumpToPage(1);
                      },
                      icon: const Icon(Icons.person_2_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                    )
                  ],
                )
              ],
            ),
          ),
          if (size.width >= 700) ...{
            SideMenuExplorer(
              pageController: pageController,
              tabItems: iconsMenuItems,
            )
          },
          Expanded(
              child: PageManagerWidget(
            controller: pageController,
            tabItems: iconsMenuItems.keys.toList(),
          )),
        ],
      ),
    );
  }
}
