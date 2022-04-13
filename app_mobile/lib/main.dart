import 'package:flutter/material.dart';

import 'app.dart';
import 'base/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MoveApp());
}
