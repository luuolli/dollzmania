import 'package:dependency_module/dependency_module.dart';
import 'package:dollzmania/src/home/home.dart';
import 'package:splash_module/splash_module.dart';
import 'package:start_module/start_module.dart';

class AppModular extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/home',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/start',
          child: (context, args) => StartPage(
            onPlay: _redirectToHome,
          ),
        ),
        ChildRoute(
          '/splash',
          child: (context, args) => const SplashScreen(
            onRedirect: _redirectToStart,
          ),
        )
      ];
}

_redirectToStart() {
  Modular.to.navigate('/start');
}

_redirectToHome(String playerName) {
  Modular.to.navigate('/home', arguments: playerName);
}
