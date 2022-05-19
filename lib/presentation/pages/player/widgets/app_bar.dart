import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/episode_details/widgets/custom_icon_button.dart';
import 'package:podcast_ui_application/presentation/pages/player/constants/colors.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  AppBarWidget({Key? key, required this.appBarActions, this.appBarLeadingIcon = Icons.arrow_back})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  final Size preferredSize;
  final List<Widget> appBarActions;
  final IconData appBarLeadingIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: pageBackgroundColor,
        elevation: 0,
        leading: CustomIconButton(
          onPressed: () => AutoRouter.of(context).pop(),
          buttonPadding: const EdgeInsets.only(left: 20),
          icon: appBarLeadingIcon,
          iconSize: 30,
        ),
        automaticallyImplyLeading: true,
        actions: appBarActions);
  }
}
