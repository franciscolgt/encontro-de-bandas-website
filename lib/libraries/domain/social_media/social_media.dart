class SocialMedia {
  SocialMedia({
    required this.icon,
    required this.url,
    required this.firebaseEvent,
  });

  final String icon;
  final String url;
  final String firebaseEvent;
}

final socialMediaItems = [
  SocialMedia(
    icon: 'logo_bscrt',
    url: 'https://www.bandaderiotinto.com',
    firebaseEvent: 'bscrt-click',
  ),
  SocialMedia(
    icon: 'instagram_icon',
    url: 'https://www.instagram.com/bandaderiotinto/?img_index=1',
    firebaseEvent: 'instagram-click',
  ),
  SocialMedia(
    icon: 'facebook_icon',
    url: 'https://www.facebook.com/bandaderiotinto/?locale=pt_PT',
    firebaseEvent: 'facebook-click',
  ),
  SocialMedia(
    icon: 'youtube_icon',
    url: 'https://www.youtube.com/channel/UCmQCkO1aB42tlpavlatsaaw',
    firebaseEvent: 'youtube-click',
  ),
];
