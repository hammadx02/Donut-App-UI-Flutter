import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(iconPath),
      ),
    );
  }
}
