import 'package:clima_app/screens/home.dart';
import 'package:clima_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TempoApp());
}

class TempoApp extends StatelessWidget {
  const TempoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: 'Previsão do Tempo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
