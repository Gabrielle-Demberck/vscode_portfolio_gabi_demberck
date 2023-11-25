import 'package:flutter/material.dart';
import 'widgets/body/body_widget.dart';

class VsCodePage extends StatefulWidget {
  const VsCodePage({super.key});

  @override
  State<VsCodePage> createState() => _VsCodePageState();
}

class _VsCodePageState extends State<VsCodePage> {
  final appbarItemsTexts = [
    "File",
    "Edit",
    "View",
    "Go",
    "Run",
    "Terminal",
    "Help"
  ];

  @override
  Widget build(BuildContext context) {
    final isAppBarResumed = MediaQuery.sizeOf(context).width <= 670;
    return Scaffold(
      backgroundColor: const Color(0xff282a36),
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: const Color(0xff1e1f29),
        centerTitle: true,
        leadingWidth: isAppBarResumed ? 40 : 400,
        leading: ListView.builder(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          itemCount: appbarItemsTexts.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Icon(
                Icons.code,
                color: Colors.blue,
              );
            }
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: Text(
                appbarItemsTexts[index - 1],
              ),
            );
          },
        ),
        title: const Text(
          "Gabrielle Demberck - Visual Studio Code",
          style: TextStyle(
              fontWeight: FontWeight.w100, fontSize: 13, color: Colors.white),
        ),
      ),
      body: const BodyWidget(),
      bottomNavigationBar: Container(
        color: const Color(0xff1e1f29),
        height: 25,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.auto_awesome_sharp,
                    size: 15,
                  ),
                  Text('main'),
                  Icon(
                    Icons.highlight_remove_sharp,
                    size: 15,
                  ),
                  Text('0'),
                  Icon(
                    Icons.warning_amber_sharp,
                    size: 15,
                  ),
                  Text('0'),
                ],
              ),
            ),
            SizedBox(
              width: 260,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.data_object_rounded,
                    size: 15,
                  ),
                  Text('Dart/Flutter'),
                  Icon(
                    Icons.code,
                    size: 15,
                  ),
                  Text('Html/Css'),
                  Text('Javascript'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
