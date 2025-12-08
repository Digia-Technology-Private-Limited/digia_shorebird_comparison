import 'package:digia_ui/digia_ui.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final digiaUI = await DigiaUI.initialize(
    DigiaUIOptions(
      accessKey: '693728f0fc99cdbb48e4ab1c',
      flavor: Flavor.release(
        initStrategy: NetworkFirstStrategy(timeoutInMs: 3000),
        appConfigPath: 'assets/appConfig.json',
        functionsPath: 'assets/functions.js',
      ),
    ),
  );

  runApp(
    DigiaUIApp(
      digiaUI: digiaUI,
      builder: (context) => MaterialApp(home: DUIFactory().createInitialPage()),
    ),
  );
}
