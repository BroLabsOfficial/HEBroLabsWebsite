import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/components/appbar.dart';
import 'package:hebrolabswebsite/components/footer.dart';
import 'package:hebrolabswebsite/components/padding_text.dart';
import 'package:hebrolabswebsite/constants.dart';
import 'package:hebrolabswebsite/screens/index.dart';
import 'package:hebrolabswebsite/screens/privacy_policy.dart';
import 'package:hebrolabswebsite/screens/term_of_use.dart';

class UnknownRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          showLeading: false,
        ),
        backgroundColor: kColorPrimary,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    'images/logo_black.webp',
                  ),
                ),
                Text(
                  '404',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: kColorAccent,
                  ),
                ),
                Text(
                  'This webpage not found.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: kColorAccent,
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, Index.id);
                  },
                  color: kColorAccent,
                  child: PaddingText(
                    text: 'Go To Home Page',
                    padding: 4,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kColorIcons,
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
        ),
      ),
    );
  }
}
