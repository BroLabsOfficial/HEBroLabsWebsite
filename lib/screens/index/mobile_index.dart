import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hebrolabswebsite/components/padding_text.dart';
import 'package:hebrolabswebsite/components/paragraph.dart';
import 'package:hebrolabswebsite/constants.dart';

class MobileIndex extends StatelessWidget {
  final ourAppsKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        child: Column(
          children: [
            Image.asset('images/phone.webp'),
            Padding(
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
                      onPressed: () =>
                          Scrollable.ensureVisible(ourAppsKey.currentContext),
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
                    child: Column(
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
                child: CarouselSlider(
                  items: [
                    Image.asset('images/app_n1.webp'),
                    Image.asset('images/app_n2.webp'),
                    Image.asset('images/app_n3.webp'),
                    Image.asset('images/app_n4.webp'),
                    Image.asset('images/app_n5.webp'),
                    Image.asset('images/app_n6.webp'),
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
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
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
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Center(
                            child: Text(
                              'HEBro Labs is a company that develops apps to makes your life easier.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Column(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
