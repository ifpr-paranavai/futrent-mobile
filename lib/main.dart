import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:futrent_mobile/app.dart';
import 'package:futrent_mobile/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:futrent_mobile/modules/login/repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  /// -- Initialize WidgetsBinding --
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// -- Initialize Local Storage --
  await GetStorage.init();

  /// -- Await Splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// -- Initialize Firebase & Authentication Repository--
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  runApp(const App());
}
