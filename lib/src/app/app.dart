import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:splash_module/splash_module.dart';
import 'package:home_module/home_module.dart';
import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  _redirectToHome(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Future.delayed(
          Duration.zero,
          () => Navigator.pushReplacementNamed(context, '/'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      routes: _buildRoutes(),
      initialRoute: 'splash/',
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: AppGradients.mainGradient,
          ),
          child: child,
        );
      },
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
