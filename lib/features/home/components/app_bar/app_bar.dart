import 'package:flutter/material.dart';

import '../../../../config/config.dart';
import 'bscrt_logo.dart';
import 'menu_icon.dart';
import 'pages_menu.dart';

PreferredSizeWidget? appBar(BuildContext context) {
  final laptop = isLaptop(context);
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    scrolledUnderElevation: 0,
    forceMaterialTransparency: true,
    leading: const Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
      child: BscrtLogo(),
    ),
    title: laptop ? const PagesMenu() : null,
    actions: laptop ? [] : [const MenuIcon()],
  );
}
