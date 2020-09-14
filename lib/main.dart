import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/constants.dart';
import 'package:hebrolabswebsite/screens/index.dart';
import 'package:hebrolabswebsite/screens/privacy_policy.dart';
import 'package:hebrolabswebsite/screens/term_of_use.dart';
import 'package:hebrolabswebsite/screens/unknown_root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HEBro Labs',
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => UnknownRoot(),
      ),
      theme: ThemeData(
        accentColor: kColorAccent,
        dividerColor: kColorAccent,
        primaryColor: kColorPrimary,
        backgroundColor: kColorPrimary,
        appBarTheme: AppBarTheme(
          color: kColorAccent,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        Index.id: (context) => Index(),
        TermOfUse.id: (context) => TermOfUse(),
        PrivacyPolicy.id: (context) => PrivacyPolicy(),
      },
      initialRoute: Index.id,
    );
  }
}
