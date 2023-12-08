import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .4,
              constraints: const BoxConstraints(minWidth: 500),
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Gabrielle Demberck',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        height: 0.8),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 100,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('FullStack Developer | Mobile',
                            textStyle: const TextStyle(
                              fontSize: 34.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            child: const Text(
                              'About',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            alignment: Alignment.center,
                            width: 150,
                            height: 50,
                            child: const Text(
                              'Contact',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints.expand(width: 600, height: 600),
              child: Image.asset(
                'prototypingprocess-pana.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
