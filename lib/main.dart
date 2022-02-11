import 'package:flutter/services.dart';

import 'src/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const App());
}
