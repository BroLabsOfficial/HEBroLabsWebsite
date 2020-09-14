import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/constants.dart';

class Footer extends StatelessWidget {
  final Function homeAction;
  final Function termOfUseAction;
  final Function privacyPolicyAction;

  Footer({this.homeAction, this.termOfUseAction, this.privacyPolicyAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kColorAccent,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 80, right: 30, left: 30),
            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(
                    text: 'Copyright © 2020 ', // default text style
                    style: TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'HEBro Labs',
                        recognizer: TapGestureRecognizer()..onTap = homeAction,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      TextSpan(
                        text: ' - All Rights',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: homeAction,
                      child: Text(
                        'Home',
                        style: TextStyle(color: kColorIcons),
                      ),
                    ),
                    MaterialButton(
                      onPressed: termOfUseAction,
                      child: Text(
                        'Term Of Use',
                        style: TextStyle(color: kColorIcons),
                      ),
                    ),
                    MaterialButton(
                      onPressed: privacyPolicyAction,
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(color: kColorIcons),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
