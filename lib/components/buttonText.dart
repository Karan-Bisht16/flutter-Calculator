import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    this.content = "",
    this.textColor = 0xFF27A2F7,
  });

  final String content;
  final int textColor;

  @override
  Widget build(BuildContext context) {
    return Text(content,
        style: TextStyle(color: Color(textColor), fontSize: 40));
  }
}
