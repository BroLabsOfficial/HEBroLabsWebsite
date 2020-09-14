import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/constants.dart';

class MyAppBar extends AppBar {

  final bool showLeading;

  MyAppBar({this.showLeading = true})
      : super(
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage('images/logo_white.webp'),
                  width: 80,
                ),
              ),
              Text(
                'HEBro Labs',
                style: TextStyle(
                    color: kColorIcons,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          leading: showLeading ? BackButton(color: kColorIcons) : null,
        );
}
