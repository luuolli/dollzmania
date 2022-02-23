import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
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
                        style: theme.textTheme.caption,
                      ),
                    ],
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.end,
                  style: theme.textTheme.headline1,
                ),
              ],
            ),
            CupertinoTextField(
              padding: theme.buttonTheme.padding,
              decoration: BoxDecoration(
                color: theme.colorScheme.onBackground.withOpacity(0.3),
                borderRadius: BorderRadius.circular(4),
              ),
              placeholder: 'Nome',
              placeholderStyle: theme.textTheme.bodyText2?.copyWith(
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
                      color: theme.primaryColor.withOpacity(0.5),
                      offset: const Offset(2, 3),
                      spreadRadius: 1.5,
                    ),
                  ],
                ),
                child: CupertinoButton(
                  color: theme.primaryColor,
                  child: const Text('Jogar'),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
