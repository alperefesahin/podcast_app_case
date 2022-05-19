import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/constants/button_styles.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/constants/intro_key.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/constants/texts.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/widgets/introduction_screen_custom_button.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/widgets/introduction_screens.dart';
import 'package:podcast_ui_application/presentation/routes/router.gr.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  final emptySpace = const SizedBox(height: 60);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: globalBackgroundColor,
      initialPage: 0,
      pages: introductionScreens,
      onDone: () => AutoRouter.of(context).replace(const LoginRoute()),
      showBackButton: false,
      showSkipButton: true,
      skipOrBackFlex: 1,
      skipStyle: introductionScreensButtonStyle,
      nextStyle: introductionScreensButtonStyle,
      doneStyle: introductionScreensButtonStyle,
      controlsPadding: const EdgeInsets.only(top: 10, left: 12, right: 12),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.only(bottom: 50),
      skip: const IntroductionScreenCustomButton(buttonText: skip),
      next: const IntroductionScreenCustomButton(buttonText: next),
      done: const IntroductionScreenCustomButton(buttonText: next),
      dotsDecorator: const DotsDecorator(
        color: dotsInactiveColor,
        activeColor: whiteColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
