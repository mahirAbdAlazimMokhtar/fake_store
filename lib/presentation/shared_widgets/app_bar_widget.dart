import 'package:flutter/material.dart';
import 'package:store_rest_api/presentation/resources/values_manager.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({required this.function, required this.icon});
  final Function function;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p12),
      child: GestureDetector(
          onTap: () {
            function();
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).cardColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Icon(icon),
            ),
          )),
    );
  }
}