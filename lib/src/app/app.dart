import 'package:dependency_module/dependency_module.dart';
import 'package:sucrilhos_design_system/sucrilhos_design_system.dart';

class App extends StatelessWidget {
  final bool debugMode;

  const App({
    Key? key,
    this.debugMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: debugMode,
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
          constraints: const BoxConstraints(maxWidth: 400),
          child: child,
        );
      },
    );
  }
}
