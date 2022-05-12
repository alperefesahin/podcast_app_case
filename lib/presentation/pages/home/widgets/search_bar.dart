import 'package:crop_experience_agency_case/presentation/pages/home/constants/texts.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

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
