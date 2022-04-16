import 'package:flutter/services.dart';
import 'package:dependency_module/dependency_module.dart';

import 'src/app/app_module_base.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  Modular.setInitialRoute('/splash');

  runApp(
    ModularApp(
      child: const App(),
      module: AppModular(),
    ),
  );
}
