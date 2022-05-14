import 'package:crop_experience_agency_case/application/login/cubit/login_cubit.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/widgets/custom_text.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/widgets/input_fields.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/widgets/login_button.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/widgets/sign_up_text.dart';
import 'package:flutter/material.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({Key? key, required this.state}) : super(key: key);
  final LoginState state;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const LoginPageCustomText(
              padding: EdgeInsets.only(top: 20.0, left: 25),
              text: loginText,
              textStyle: TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
              maxFontSize: 33,
              minFontSize: 30,
            ),
            const LoginPageCustomText(
              padding: EdgeInsets.only(bottom: 8, top: 30.0, left: 25),
              text: emailText,
              textStyle: TextStyle(fontWeight: FontWeight.w400, color: whiteColor),
              maxFontSize: 20,
              minFontSize: 18,
            ),
            EmailInputField(state: state),
            const LoginPageCustomText(
              padding: EdgeInsets.only(top: 8, left: 25),
              text: passwordText,
              textStyle: TextStyle(fontWeight: FontWeight.w400, color: whiteColor),
              maxFontSize: 20,
              minFontSize: 18,
            ),
            PasswordInputField(state: state),
          ],
        ),
        const Expanded(child: SizedBox.shrink()),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const SignUpText(), Padding(padding: const EdgeInsets.only(right: 25), child: LoginButton(state: state))],
          ),
        ),
      ],
    );
  }
}
