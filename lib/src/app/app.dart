import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:splash_module/splash_module.dart';
import 'package:home_module/home_module.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  _redirectToHome(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Future.delayed(
          Duration.zero,
          () => Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (_) => const HomePage(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: kDebugMode,
      routes: _buildRoutes(),
      initialRoute: 'splash/',
    );
  }

  Map<String, Widget Function(BuildContext)> _buildRoutes() {
    return {
      "splash/": (context) => SplashScreen(
            onRedirect: _redirectToHome(context),
          ),
      "/": (context) => const HomePage(),
    };
  }
}
