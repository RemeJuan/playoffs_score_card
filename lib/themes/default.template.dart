import 'package:flutter/material.dart';

class DefaultTemplate extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget? fab;

  const DefaultTemplate({
    required this.child,
    required this.title,
    this.fab,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: child,
      floatingActionButton: fab,
    );
  }
}
