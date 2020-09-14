import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/components/padding_text.dart';
import 'package:hebrolabswebsite/components/paragraph.dart';
import 'package:hebrolabswebsite/constants.dart';

class DesktopIndex extends StatelessWidget {
  final ourAppsKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Image.asset('images/phone.webp'),
                  ),
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        PaddingText(
                          text: 'Welcome',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: kColorAccent,
                          ),
                          padding: 24,
                        ),
                        PaddingText(
                          text: 'HEBro Labs make your life easier.',
                          padding: 24,
                          style: TextStyle(fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            onPressed: () => Scrollable.ensureVisible(
                                ourAppsKey.currentContext),
                            color: kColorAccent,
                            child: PaddingText(
                              text: 'See Our Apps',
                              padding: 4,
                              isSelectable: false,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: kColorIcons,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Paragraph(
              title: 'Our Apps',
              textDividerKey: ourAppsKey,
              padding: 30,
              child: Column(
                children: [
                  PaddingText(
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    text: 'Control Panel Helper',
                    padding: 16,
                  ),
                  SelectableText(
                    'Control your mobile phone with clever app.',
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/control_panel_helper.png',
                        ),
                        Image.asset(
                          'images/google_play.webp',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Paragraph(
              title: 'Take a look',
              child: Container(
                height: 500,
                child: CarouselSlider(
                  items: [
                    OverflowBox(
                      child: Image.asset(
                        'images/app_n1.webp',
                      ),
                      maxHeight: 500,
                      minHeight: 300,
                    ),
                    OverflowBox(
                      child: Image.asset(
                        'images/app_n2.webp',
                      ),
                      maxHeight: 500,
                      minHeight: 300,
                    ),
                    OverflowBox(
                      child: Image.asset(
                        'images/app_n3.webp',
                      ),
                      maxHeight: 500,
                      minHeight: 300,
                    ),
                    OverflowBox(
                      child: Image.asset(
                        'images/app_n4.webp',
                      ),
                      maxHeight: 500,
                      minHeight: 300,
                    ),
                    OverflowBox(
                      child: Image.asset(
                        'images/app_n5.webp',
                      ),
                      maxHeight: 500,
                      minHeight: 300,
                    ),
                    OverflowBox(
                      child: Image.asset(
                        'images/app_n6.webp',
                      ),
                      maxHeight: 500,
                      minHeight: 300,
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    pauseAutoPlayOnTouch: true,
                    autoPlayInterval: Duration(seconds: 5),
                    aspectRatio: 2.0,
                    initialPage: 2,
                  ),
                ),
              ),
              padding: 20,
            ),
            Paragraph(
              title: 'About Us',
              padding: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/picture.webp'),
                        PaddingText(
                          text: 'HEBro Labs',
                          padding: 16,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        PaddingText(
                          text: 'HEBro Labs is a company that develops apps to makes your life easier.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          padding: 8,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Image.asset('images/logo_black.webp'),
                        PaddingText(
                          text: 'The Company',
                          padding: 16,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
