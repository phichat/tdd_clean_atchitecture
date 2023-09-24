import 'package:design/design.dart';
import 'package:flutter/material.dart';

import 'config/router/app_router.dart';
import 'features/number_trivia/number_trivia.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final navigatorKey = GlobalKey<NavigatorState>();
  await di.init(navigatorKey: navigatorKey);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Number Trivia',
      theme: sLightThemeData(context),
      darkTheme: sDarkThemeData(context),
      themeMode: ThemeMode.light,
      routerConfig: _appRouter.config(),
      // home: const NumberTriviaPage(),
    );
  }
}
