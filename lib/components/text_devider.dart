import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;
  final Key key;

  TextDivider({this.text, this.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: Row(
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black,
                  height: 18,
                )),
          ),
          Text("$text"),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Divider(
                  color: Colors.black,
                  height: 18,
                )),
          ),
        ],
      ),
    );
  }
}
