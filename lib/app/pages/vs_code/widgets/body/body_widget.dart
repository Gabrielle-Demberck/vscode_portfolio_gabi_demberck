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
    'about.dart': Icons.person_pin_circle_outlined,
    'contact.css': Icons.account_tree_outlined,
    'projects.js': Icons.perm_phone_msg_sharp,
    'github.json': Icons.auto_awesome_mosaic_outlined
  };

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Row(
        children: [
          Container(
            height: size.height,
            width: 57,
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
                        isSelected: pageController.page == index.toDouble(),
                        icon: iconsMenuItems.values.toList().elementAt(index),
                        onTap: () {},
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
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
