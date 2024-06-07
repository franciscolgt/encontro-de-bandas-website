class SocialMedia {
  SocialMedia({
    required this.icon,
    required this.url,
  });

  final String icon;
  final String url;
}

final socialMediaItems = [
  SocialMedia(icon: 'logo_bscrt', url: 'https://www.bandaderiotinto.com'),
  SocialMedia(
    icon: 'instagram_icon',
    url: 'https://www.instagram.com/bandaderiotinto/?img_index=1',
  ),
  SocialMedia(
    icon: 'facebook_icon',
    url: 'https://www.facebook.com/bandaderiotinto/?locale=pt_PT',
  ),
  SocialMedia(
    icon: 'youtube_icon',
    url: 'https://www.youtube.com/channel/UCmQCkO1aB42tlpavlatsaaw',
  ),
];
