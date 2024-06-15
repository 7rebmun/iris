import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iris/src/app.dart';
import 'package:iris/src/constants.dart';
import 'package:iris/src/providers/providers.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await WindowManager.instance.ensureInitialized();

  GoogleFonts.config.allowRuntimeFetching = false;

  if (kIsDesktop) {
    await WindowManager.instance.center(animate: true);
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const Iris(),
    ),
  );
}
