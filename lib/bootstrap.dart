import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'locator.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  // Setup the dependency injection.
  initService();

  await sl.isReady<Isar>();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
        () async => runApp(await builder()),
        (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
