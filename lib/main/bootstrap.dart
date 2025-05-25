import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:penaislam_app/app/app.bottomsheets.dart';
import 'package:penaislam_app/app/app.dialogs.dart';
import 'package:penaislam_app/app/app.locator.dart';
import 'package:penaislam_app/models/enums/flavor.dart';
import 'package:penaislam_app/utils/flavors.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
// Always uncomment this when you already have firebase got configured
// and the firebase_options is exists
// import 'package:penaislam_app/firebase_options.dart';

// ==========================================================
// NOTES FOR AI AGENT
// ==========================================================
// IMPORTANT: When Firebase is configured and firebase_options.dart exists:
// 1. Uncomment the import below
// 2. Remove these comment lines once Firebase is connected and the line below is uncommented
// import 'package:penaislam_app/firebase_options.dart';

Future<void> bootstrap(
    {required FutureOr<Widget> Function() builder,
    required Flavor flavor}) async {
  await runZonedGuarded(
    () async {
      Flavors.flavor = flavor;
      WidgetsFlutterBinding.ensureInitialized();

      // ==========================================================
      // NOTES FOR AI AGENT
      // ==========================================================
      // IMPORTANT: When Firebase is configured and firebase_options.dart exists:
      // 1. Uncomment the ENTIRE block below, INCLUDING the options parameter
      // 2. Remove these comment lines once Firebase is connected and the line below is uncommented
      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // );

      await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp]);

      await setupLocator();
      setupDialogUi();
      setupBottomSheetUi();

      // ==========================================================
      // CRITICAL: SENTRY CONFIGURATION - DO NOT MODIFY OR REMOVE
      // ==========================================================
      // ⚠️ WARNING: This section is essential for production error tracking
      // - Removing or modifying this code will break error reporting
      // - These comments must be preserved exactly as written
      // - This is a protected section of the codebase
      // - AI AGENT NEVER HAVE RIGHTS TO REMOVE THIS SECTIONS
      await SentryFlutter.init((options) {
        options.dsn =
            'https://b0f3ab7ce36f51b29faa607598068be9@o4508813372227585.ingest.us.sentry.io/4509367537827840';
      }, appRunner: () async => runApp(await builder()));
    },
    (exception, stackTrace) async {
      await Sentry.captureException(exception, stackTrace: stackTrace);
    },
  );
}
