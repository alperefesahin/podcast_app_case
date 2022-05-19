import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/login/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/login/constants/texts.dart';
import 'package:podcast_ui_application/presentation/pages/login/widgets/custom_text.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: const LoginPageCustomText(
        padding: EdgeInsets.only(left: 25),
        text: dontHaveTheAccountText,
        textStyle: TextStyle(color: loginPageButtonColor, fontSize: 16.5, fontWeight: FontWeight.w400),
        minFontSize: 16,
        maxFontSize: 18,
      ),
    );
  }
}
