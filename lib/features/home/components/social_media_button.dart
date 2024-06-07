// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../libraries/domain/social_media/social_media.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    required this.socialMedia,
    super.key,
  });

  final SocialMedia socialMedia;

  @override
  Widget build(BuildContext context) {
    final laptop = isLaptop(context);
    return InkWell(
      onTap: () {
        js.context.callMethod('open', [socialMedia.url]);
      },
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: laptop ? 30 : 40,
        width: laptop ? 30 : 40,
        padding: socialMedia.icon == 'logo_bscrt'
            ? EdgeInsets.all(laptop ? 2 : 4)
            : EdgeInsets.all(laptop ? 5 : 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.grey.withOpacity(0.5)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            'assets/images/${socialMedia.icon}.png',
          ),
        ),
      ),
    );
  }
}
