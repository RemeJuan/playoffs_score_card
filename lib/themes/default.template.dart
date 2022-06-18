import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: HexColor("#fb053e"),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: HexColor("0c0033"),
      ),
      body: child,
      floatingActionButton: fab,
    );
  }
}
