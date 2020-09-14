import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/components/appbar.dart';
import 'package:hebrolabswebsite/components/footer.dart';
import 'package:hebrolabswebsite/constants.dart';
import 'package:hebrolabswebsite/screens/index/desktop_index.dart';
import 'package:hebrolabswebsite/screens/index/mobile_index.dart';
import 'package:hebrolabswebsite/screens/index/tablet_index.dart';
import 'package:hebrolabswebsite/screens/privacy_policy.dart';
import 'package:hebrolabswebsite/screens/term_of_use.dart';

class Index extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorPrimary,
        appBar: MyAppBar(showLeading: false,),
        body: ListView(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > kMinDesktopWidth) {
                  return Column(
                    children: [
                      DesktopIndex(),
                      Footer(
                        homeAction: (){
                          Navigator.pop(context);
                          Navigator.pushNamed(context, Index.id);
                        },
                        termOfUseAction: (){
                          Navigator.pushNamed(context, TermOfUse.id);
                        },
                        privacyPolicyAction: (){
                          Navigator.pushNamed(context, PrivacyPolicy.id);
                        },
                      ),
                    ],
                  );
                } else if (constraints.maxWidth > kMinTabletWidth) {
                  return Column(
                    children: [
                      TabletIndex(),
                      Footer(
                        homeAction: (){
                          Navigator.pop(context);
                          Navigator.pushNamed(context, Index.id);
                        },
                        termOfUseAction: (){
                          Navigator.pushNamed(context, TermOfUse.id);
                        },
                        privacyPolicyAction: (){
                          Navigator.pushNamed(context, PrivacyPolicy.id);
                        },
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      MobileIndex(),
                      Footer(
                        homeAction: (){
                          Navigator.pop(context);
                          Navigator.pushNamed(context, Index.id);
                        },
                        termOfUseAction: (){
                          Navigator.pushNamed(context, TermOfUse.id);
                        },
                        privacyPolicyAction: (){
                          Navigator.pushNamed(context, PrivacyPolicy.id);
                        },
                      )
                    ],
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
