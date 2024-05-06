import 'package:crypto_fortune_fun_teller/infrastructure/dark_mode.dart';
import 'package:crypto_fortune_fun_teller/infrastructure/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Fortune Fun Teller',
      theme: theme,
      routes: routes,
    );
  }
}
