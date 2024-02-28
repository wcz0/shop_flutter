import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildCopyRight() {
  return Container(
    // padding: const EdgeInsets.all(16),
    alignment: Alignment.center,
    child: RichText(
      text: TextSpan(children: [
        const TextSpan(
            text: '© 2024 wcz0',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 8,
            )),
        TextSpan(
          text: 'Github link',
          style: const TextStyle(color: Colors.grey, fontSize: 8),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              _launchUrl('https://github.com/wcz0/shop_flutter');
            },
        )
      ]),
    ),
  );
}

void _launchUrl(String url) async {
  Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
