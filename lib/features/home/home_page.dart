import 'package:flutter/material.dart';

import '../../config/config.dart';
import 'components/app_bar/app_bar.dart';
import 'components/app_bar/sidebar.dart';
import 'components/footer/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.body,
    this.noPadding = false,
    super.key,
  });

  final Widget body;
  final bool noPadding;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(context),
        endDrawer: isLaptop(context) ? null : const SideBar(),
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: isLaptop(context)
              ? _HomePageContent(
                  body: body,
                  noPadding: noPadding,
                )
              : InteractiveViewer(
                  child: _HomePageContent(
                    body: body,
                    noPadding: noPadding,
                  ),
                ),
        ),
      ),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent({
    required this.body,
    required this.noPadding,
  });

  final Widget body;
  final bool noPadding;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Padding(
          padding: noPadding
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
          child: body,
        ),
        const SizedBox(height: 20),
        const Footer(),
        const SizedBox(height: 10),
      ],
    );
  }
}
