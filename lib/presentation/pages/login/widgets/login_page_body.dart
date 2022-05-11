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
            textWidget(
              padding: const EdgeInsets.only(top: 20.0, left: 25),
              text: loginText,
              textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: whiteColor),
            ),
            textWidget(
              padding: const EdgeInsets.only(bottom: 8, top: 30.0, left: 25),
              text: emailText,
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: whiteColor),
            ),
            EmailInputField(state: state),
            textWidget(
              padding: const EdgeInsets.only(bottom: 8, top: 8, left: 25),
              text: passwordText,
              textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: whiteColor),
            ),
            PasswordInputField(state: state),
          ],
        ),
        const Expanded(child: SizedBox.shrink()),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SignUpText(),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: LoginButton(state: state),
              )
            ],
          ),
        ),
      ],
    );
  }
}
