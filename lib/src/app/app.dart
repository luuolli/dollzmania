import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/foundation.dart';
import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: kDebugMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
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
}
