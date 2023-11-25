import 'package:flutter/material.dart';
import 'page_manager_widget.dart';
import 'side_menu_icon_button_widget.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  final pageController = PageController();
  final iconsMenuItems = {
    Icons.copy,
    Icons.account_tree_outlined,
    Icons.perm_phone_msg_sharp,
    Icons.auto_awesome_mosaic_outlined
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
                        icon: iconsMenuItems.elementAt(index),
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
          const Expanded(child: PageManagerWidget()),
        ],
      ),
    );
  }
}
