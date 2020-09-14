import 'dart:async' show Future;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:hebrolabswebsite/components/appbar.dart';
import 'package:hebrolabswebsite/components/footer.dart';
import 'package:hebrolabswebsite/constants.dart';
import 'package:hebrolabswebsite/screens/privacy_policy.dart';

class TermOfUse extends StatelessWidget {
  static const String id = '/term_of_use';

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/res/terms.txt');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorPrimary,
        appBar: MyAppBar(),
        body: ListView(
          children: [
            Image(
              image: AssetImage('images/term_of_use.webp'),
              fit: BoxFit.fitHeight,
              height: 500,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
              child: Center(
                child: FutureBuilder(
                  future: loadAsset(),
                  initialData: 'Loading...',
                  builder: (BuildContext context, AsyncSnapshot<String> text) {
                    return SelectableText(
                      text.data,
                      style: TextStyle(
                          fontSize: 15
                      ),
                    );
                  },
                ),
              ),
            ),
            Footer(
              homeAction: () {
                Navigator.pop(context);
              },
              privacyPolicyAction: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, PrivacyPolicy.id);
              },
              termOfUseAction: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, TermOfUse.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
