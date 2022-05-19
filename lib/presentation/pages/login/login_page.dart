import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:podcast_ui_application/application/login/cubit/login_cubit.dart';
import 'package:podcast_ui_application/presentation/pages/login/constants/colors.dart';
import 'package:podcast_ui_application/presentation/pages/login/widgets/app_bar.dart';
import 'package:podcast_ui_application/presentation/pages/login/widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) => SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: pageBackgroundColor,
            appBar: AppBarWidget(appBarActions: const []),
            body: LoginPageBody(
              state: state,
            ),
          ),
        ),
      ),
    );
  }
}
