import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                        TypewriterAnimatedText('Software Engineer | Mobile',
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
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      blurStyle: BlurStyle.solid)
                                ],
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
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
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      blurStyle: BlurStyle.solid)
                                ],
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
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
            Visibility(
              visible: size.width >= 1000,
              child: Container(
                height: size.height - 200,
                width: 600,
                constraints: const BoxConstraints(minHeight: 400),
                child: Image.asset(
                  'prototypingprocess-pana.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
