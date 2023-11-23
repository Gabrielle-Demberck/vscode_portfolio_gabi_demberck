import 'package:flutter/material.dart';
import 'widgets/body_widget.dart';

class VsCodePage extends StatefulWidget {
  const VsCodePage({super.key});

  @override
  State<VsCodePage> createState() => _VsCodePageState();
}

class _VsCodePageState extends State<VsCodePage> {
  @override
  Widget build(BuildContext context) {
    final isAppBarResumed = MediaQuery.sizeOf(context).width <= 670;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff282a36),
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: const Color(0xff1e1f29),
        centerTitle: true,
        leadingWidth: isAppBarResumed ? 40 : 350,
        leading: Row(
          mainAxisAlignment: isAppBarResumed
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.code,
              color: Colors.blue,
            ),
            if (!isAppBarResumed) ...{
              const Text(
                "File",
              ),
              const Text(
                "Edit",
              ),
              const Text(
                "View",
              ),
              const Text(
                "Go",
              ),
              const Text(
                "Run",
              ),
              const Text(
                "Terminal",
              ),
              const Text(
                "Help",
              ),
            }
          ],
        ),
        title: const Text(
          "Gabrielle Demberck - Visual Studio Code",
          style: TextStyle(fontWeight: FontWeight.w100, fontSize: 13),
        ),
      ),
      body: const BodyWidget(),
    );
  }
}
