import 'dart:developer';

import 'package:starter/app/observers/bloc_observer.dart';
import 'package:starter/core.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Color for Android
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Brightness.light, // Dark == white status bar -- for IOS.
    ),
  );
  // 앱 세로모드 고정
  unawaited(
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  );
  // 에러 중앙 관리
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
