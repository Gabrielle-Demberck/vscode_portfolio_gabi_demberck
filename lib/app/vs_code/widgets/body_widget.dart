import 'package:flutter/material.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          height: size.height,
          width: 57,
          color: const Color(0xff343746),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                    tooltip: 'Home',
                    onPressed: () {},
                    icon: const Icon(Icons.copy),
                  ),
                  IconButton(
                    tooltip: 'Git',
                    onPressed: () {},
                    icon: const Icon(Icons.account_tree_outlined),
                  ),
                  IconButton(
                    tooltip: 'Contato',
                    onPressed: () {},
                    icon: const Icon(Icons.mail_outline_outlined),
                  ),
                  InkWell(
                    hoverColor: Colors.pink,
                    onTap: () {},
                    child: Container(
                      width: 57,
                      height: 50,
                      decoration: const BoxDecoration(
                          border: Border(
                        left: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      )),
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        Icons.file_download_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
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
        SizedBox(
          width: size.width * 0.8,
          child: PageView(
            controller: pageController,
            children: const [],
          ),
        ),
      ],
    );
  }
}
