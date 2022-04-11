import 'package:flutter/material.dart';
import 'package:project_mobile_app/app.dart';

import 'base/di.dart';
import 'shared/constants/common.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init(
    ClientAPIDomain
  );
  runApp(const MoveApp());
}
