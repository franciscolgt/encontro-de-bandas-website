import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../libraries/ui_components/image/ebrt_image.dart';
import '../home/home_page.dart';

class CartazPage extends StatelessWidget {
  const CartazPage({super.key});

  double _cartazHeight(BuildContext context) =>
      MediaQuery.of(context).size.height - 140;

  Widget _cartaz(BuildContext context) => !isLaptop(context)
      ? const EbrtImage(photoName: 'cartaz_vertical.png')
      : EbrtImage(
          photoName: 'cartaz_horizontal.png',
          height: _cartazHeight(context),
          fitWidth: false,
        );

  @override
  Widget build(BuildContext context) {
    analytics.logEvent(name: 'cartaz');
    return HomePage(
      noPadding: true,
      body: !isLaptop(context)
          ? MediaQuery.of(context).size.width / 0.75 < _cartazHeight(context)
              ? Container(
                  alignment: Alignment.center,
                  height: _cartazHeight(context),
                  child: _cartaz(context),
                )
              : _cartaz(context)
          : _cartaz(context),
    );
  }
}
