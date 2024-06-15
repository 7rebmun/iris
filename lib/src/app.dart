import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iris/src/providers/theme_provider.dart';
import 'package:iris/src/router/router.dart';
import 'package:provider/provider.dart';

class Iris extends StatelessWidget {
  const Iris({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return MaterialApp(
      title: "Iris",
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      scrollBehavior: const CupertinoScrollBehavior(),
      theme: themeProvider.getTheme(MediaQuery.platformBrightnessOf(context)),
      navigatorKey: IrisRouter.navigatorKey,
      onGenerateRoute: IrisRouter.onGenerateRoute,
      initialRoute: IrisRouter.initialRoute,
    );
  }
}
