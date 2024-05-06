import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text('wallet')],
    );
  }
}
