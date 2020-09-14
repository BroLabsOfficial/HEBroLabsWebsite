import 'package:flutter/material.dart';

class PaddingText extends StatelessWidget {
  PaddingText({this.text, this.padding, this.style, this.isSelectable = true});

  final String text;
  final double padding;
  final TextStyle style;
  final bool isSelectable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: isSelectable ? SelectableText(
        '$text',
        style: style,
      ) : Text(
        '$text',
        style: style,
      ),
    );
  }
}
