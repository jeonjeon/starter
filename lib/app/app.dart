import 'package:flutter/material.dart';
import 'package:starter/l10n/l10n.dart';
import 'package:starter/modules/splash/view/splash_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '스타터',
      theme: ThemeData(
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SplashView(),
    );
  }
}
