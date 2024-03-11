import 'package:chrconnecthpdraft/feature/app/chr_connect_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intro/intro.dart';
final controller1 = IntroController(stepCount: 5);
ScrollController controller = ScrollController();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(Intro(
    cardDecoration: const IntroCardDecoration(showPreviousButton: false),
    controller: controller1,
    child: const CHRConnectApp(),
  ));
}
