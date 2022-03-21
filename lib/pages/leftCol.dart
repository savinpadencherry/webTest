import 'package:flutter/material.dart';

class LeftCol extends StatefulWidget {
  const LeftCol({Key? key}) : super(key: key);

  @override
  State<LeftCol> createState() => _LeftColState();
}

class _LeftColState extends State<LeftCol> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Welcome to the communtiy'),
          subtitle: Text('Total people online : 1200'),
        ),
      ],
    );
  }
}
