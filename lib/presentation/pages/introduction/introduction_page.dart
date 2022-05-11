import 'package:auto_route/auto_route.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/button_styles.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/intro_key.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/widgets/introduction_screens.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/paddings.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/widgets/buttons.dart';
import 'package:crop_experience_agency_case/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
      skip: Column(
        children: [emptySpace, customButton(buttonText: skip)],
      ),
      next: Column(
        children: [emptySpace, customButton(buttonText: next)],
      ),
      done: Column(
        children: [emptySpace, customButton(buttonText: next)],
      ),
      controlsPadding: controlsPadding,
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.only(bottom: 50),
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
