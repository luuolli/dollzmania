import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:home_module/home_module.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: kDebugMode,
      home: HomePage(),
    );
  }
}
