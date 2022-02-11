import 'package:flutter/cupertino.dart';

class DollzmaniaLogo extends StatelessWidget {
  final double size;

  const DollzmaniaLogo({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: size,
      height: size,
      curve: Curves.elasticOut,
      duration: const Duration(seconds: 2),
      child: Image.asset(
        'assets/images/girl.png',
      ),
    );
  }
}
