import 'package:desafio_flutter_widget/src/home/widgets/fractionally_sized_box_icon.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FractionallySizedBoxIcon(
          widthFactor: .10,
          color: Colors.red,
          icon: Icons.notifications,
        ),
      ),
    );
  }
}
