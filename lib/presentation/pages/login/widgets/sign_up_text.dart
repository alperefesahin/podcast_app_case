import 'package:auto_size_text/auto_size_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/constants/texts.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: InkWell(
        onTap: () {},
        child: const AutoSizeText(
          dontHaveTheAccountText,
          style: TextStyle(
            color: loginPageButtonColor,
            fontSize: 16.5,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
