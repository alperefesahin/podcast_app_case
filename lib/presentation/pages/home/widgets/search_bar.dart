import 'package:flutter/material.dart';
import 'package:podcast_ui_application/presentation/pages/home/constants/texts.dart';
import 'package:podcast_ui_application/presentation/pages/login/widgets/auth_text_field.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      padding: const EdgeInsets.only(left: 25, top: 40),
      borderRadiusCircularValue: 10,
      hint: searchBarHintText,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {},
    );
  }
}
