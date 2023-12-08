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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff01C8EE),
          primary: const Color(0xff01C8EE),
          background: const Color(0xff282a36),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xff01C8EE), //  <-- dark color
          textTheme: ButtonTextTheme.primary,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const VsCodePage(),
    );
  }
}
