import 'package:flutter/cupertino.dart';
import 'package:splash_module/src/presenter/widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  final Function()? onRedirect;

  const SplashScreen({
    Key? key,
    this.onRedirect,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double percentSize = 1.0;
  @override
  void initState() {
    super.initState();

    WidgetsFlutterBinding.ensureInitialized();
    WidgetsBinding.instance?.addPostFrameCallback(_initStart);
  }

  void _initStart(_) async {
    await Future.delayed(const Duration(milliseconds: 0));
    setState(() {
      percentSize = 0.5;
    });
    widget.onRedirect?.call();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Center(
      child: DollzmaniaLogo(size: mediaQuery.size.width * percentSize),
    );
  }
}
