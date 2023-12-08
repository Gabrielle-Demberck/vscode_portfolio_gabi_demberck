import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Wrap(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.loose(const Size.fromWidth(370)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Gabrielle Demberck',
                    style: TextStyle(
                        fontSize: 54.0,
                        fontWeight: FontWeight.bold,
                        height: 0.8),
                  ),
                  SizedBox(
                    height: 100,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('FullStack Developer| Mobile',
                            textStyle: const TextStyle(
                              fontSize: 34.0,
                              fontWeight: FontWeight.bold,
                            ),
                            speed: const Duration(milliseconds: 200),
                            cursor: '|'),
                      ],
                      repeatForever: true,
                      totalRepeatCount: 1,
                      isRepeatingAnimation: true,
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'About Me',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Contact',
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 500,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
