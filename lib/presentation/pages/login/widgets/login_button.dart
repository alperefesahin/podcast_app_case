import 'package:auto_route/auto_route.dart';
import 'package:crop_experience_agency_case/application/login/cubit/login_cubit.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/widgets/custom_text.dart';
import 'package:crop_experience_agency_case/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.state}) : super(key: key);
  final LoginState state;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (state.status.name == "valid") {
          AutoRouter.of(context).replace(const HomeRoute());
        } else {}
      },
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          decoration: const BoxDecoration(color: loginPageButtonColor, borderRadius: BorderRadius.all(Radius.circular(25))),
          child: const LoginPageCustomText(
              padding: EdgeInsets.only(), text: loginText, textStyle: TextStyle(fontWeight: FontWeight.w600, color: whiteColor), minFontSize: 17, maxFontSize: 21)),
    );
  }
}
