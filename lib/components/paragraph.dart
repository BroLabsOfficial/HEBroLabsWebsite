import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/components/text_devider.dart';

class Paragraph extends StatelessWidget {
  Paragraph({this.child, this.title, this.textDividerKey, this.padding});

  final String title;
  final Key textDividerKey;
  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextDivider(
          text: title,
          key: textDividerKey,
        ),
        Container(
          padding: EdgeInsets.all(padding),
          child: child,
        ),
      ],
    );
  }
}
