import 'package:flutter/material.dart';
import 'pages/vs_code/vs_code_page.dart';
import 'utils/scroll_behavior.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      title: 'VsCode Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
          colorScheme: const ColorScheme.dark(primary: Color(0xff01C8EE))),
      home: const VsCodePage(),
    );
  }
}
