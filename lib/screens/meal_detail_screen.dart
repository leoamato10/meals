import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal_detail";

  @override
  Widget build(BuildContext context) {
    final mealsId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text("Cat Screen")),
      body: Center(
        child: Text(mealsId),
      ),
    );
  }
}
