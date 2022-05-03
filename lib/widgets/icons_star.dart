import 'package:flutter/material.dart';

class IconStar extends StatelessWidget {
  const IconStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String star = '';
    for (int i = 0; i < 5; i++) {
      star += '⭐';
    }
    return Text(
      star,
      style: TextStyle(fontSize: 18),
    );
  }
}
