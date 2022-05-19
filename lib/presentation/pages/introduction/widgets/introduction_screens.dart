import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/constants/page_decoration.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/constants/texts.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/widgets/build_image.dart';
import 'package:podcast_ui_application/presentation/pages/introduction/widgets/introduction_screen_custom_text.dart';

PageViewModel pageViewModel({required String titleText, required String bodyText}) {
  return PageViewModel(
      titleWidget: IntroductionScreenCustomText(
        text: titleText,
        minFontSize: 40,
        maxFontSize: 45,
        textStyle: const TextStyle(fontWeight: FontWeight.w600, color: whiteColor),
      ),
      bodyWidget: IntroductionScreenCustomText(
        text: bodyText,
        minFontSize: 17,
        maxFontSize: 21,
        textStyle: const TextStyle(color: introductionScreenBodyTextColor),
      ),
      reverse: true,
      image: buildImage('test_img.jpg'),
      decoration: pageDecoration);
}

List<PageViewModel> introductionScreens = [
  pageViewModel(titleText: firstScreenTitle, bodyText: firstScreenBodyText),
  pageViewModel(titleText: secondScreenTitle, bodyText: secondScreenBodyText),
  pageViewModel(titleText: thirdScreenTitle, bodyText: thirdScreenBodyText),
];
