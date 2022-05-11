import 'package:auto_size_text/auto_size_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/widgets/build_image.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/page_decoration.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/text_styles.dart';
import 'package:crop_experience_agency_case/presentation/pages/introduction/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel pageViewModel({required String titleText, required String bodyText}) {
  return PageViewModel(
      titleWidget: AutoSizeText(
        titleText,
        minFontSize: 40,
        maxFontSize: 45,
        textAlign: TextAlign.left,
        style: introductionScreenTitleTextStyle,
      ),
      bodyWidget: AutoSizeText(
        bodyText,
        minFontSize: 17,
        maxFontSize: 21,
        textAlign: TextAlign.left,
        style: introductionScreenBodyTextStyle,
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
