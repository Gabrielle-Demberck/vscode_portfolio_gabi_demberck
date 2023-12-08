import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Gabrielle Demberck',
                  textStyle: const TextStyle(
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 300),
                  cursor: '|'),
            ],
            repeatForever: false,
            isRepeatingAnimation: false,
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ],
      ),
    );
  }
}
