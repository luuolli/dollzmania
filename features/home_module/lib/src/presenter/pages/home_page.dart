import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // TODO: Move colors to design system
          colors: [Color(0xFF00A7DC), Color(0xFF8FF7EB)],
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
        ),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 30),
        child: CupertinoPageScaffold(
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/girl.png',
                    height: mediaQuery.size.width * 0.5,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Dollzmania\n',
                      children: [
                        TextSpan(
                          text: 'Bruna Edition',
                          style: theme.textTheme.caption?.copyWith(
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.end,
                    style: theme.textTheme.headline4?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              CupertinoTextField(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0x50F0E8FF),
                  borderRadius: BorderRadius.circular(4),
                ),
                placeholder: 'Nome',
                placeholderStyle: theme.textTheme.bodyText2?.copyWith(
                  color: Colors.white.withOpacity(0.9),
                  height: 1.4,
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF003A5A).withOpacity(0.5),
                        offset: const Offset(2, 3),
                        spreadRadius: 1.5,
                      ),
                    ],
                  ),
                  child: CupertinoButton(
                    color: const Color(0xFF0D5878),
                    child: const Text('Jogar'),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
