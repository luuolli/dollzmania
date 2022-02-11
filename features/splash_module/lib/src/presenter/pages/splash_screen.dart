import 'package:flutter/cupertino.dart';

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
  @override
  void initState() {
    super.initState();

    WidgetsFlutterBinding.ensureInitialized();
    WidgetsBinding.instance?.addPostFrameCallback(_initStart);
  }

  void _initStart(_) async {
    widget.onRedirect?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // TODO: Move colors to design system
          colors: [Color(0xFF00A7DC), Color(0xFF8FF7EB)],
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Image.asset('assets/images/girl.png'),
    );
  }
}
