import 'package:flutter/material.dart';

import '../../../../libraries/domain/social_media/social_media.dart';
import '../social_media_button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialMediaButton(socialMedia: socialMediaItems[0]),
          const SizedBox(width: 20),
          SocialMediaButton(socialMedia: socialMediaItems[1]),
          const SizedBox(width: 20),
          SocialMediaButton(socialMedia: socialMediaItems[2]),
          const SizedBox(width: 20),
          SocialMediaButton(socialMedia: socialMediaItems[3]),
        ],
      ),
    );
  }
}
