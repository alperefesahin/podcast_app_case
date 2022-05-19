import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore_for_file: unused_import
import 'package:podcast_ui_application/domain/auth_models/email.dart';
import 'package:podcast_ui_application/domain/auth_models/password.dart';
import 'package:podcast_ui_application/application/login/cubit/login_cubit.dart';
import 'package:podcast_ui_application/presentation/pages/login/constants/texts.dart';
import 'package:podcast_ui_application/presentation/pages/login/widgets/auth_text_field.dart';

class EmailInputField extends StatelessWidget {
  const EmailInputField({Key? key, required this.state}) : super(key: key);
  final LoginState state;
  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      padding: const EdgeInsets.only(left: 25, right: 25),
      hint: yourEmailText,
      keyboardType: TextInputType.emailAddress,
      error: state.email.error?.name,
      onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
    );
  }
}

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({Key? key, required this.state}) : super(key: key);
  final LoginState state;
  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 6),
      hint: minEighthCharacterText,
      isPasswordField: true,
      keyboardType: TextInputType.text,
      error: state.password.error?.name,
      onChanged: (password) => context.read<LoginCubit>().passwordChanged(password),
    );
  }
}
