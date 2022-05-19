import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/login/constants/colors.dart';
import 'package:podcast_ui_application/presentation/routes/router.gr.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  AppBarWidget({Key? key, required this.appBarActions})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  final Size preferredSize;
  final List<Widget> appBarActions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: pageBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          icon: const Icon(Icons.arrow_back),
          onPressed: () => AutoRouter.of(context).replace(const IntroductionRoute()),
        ),
        automaticallyImplyLeading: true,
        actions: appBarActions);
  }
}
