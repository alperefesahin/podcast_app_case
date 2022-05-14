import 'package:flutter/material.dart';
import 'package:crop_experience_agency_case/presentation/pages/login/constants/colors.dart';

class AuthTextField extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final bool isRequiredField;
  final String? error;
  final EdgeInsets padding;
  final double borderRadiusCircularValue;

  const AuthTextField({
    Key? key,
    this.hint = '',
    required this.onChanged,
    required this.keyboardType,
    this.isPasswordField = false,
    this.isRequiredField = false,
    this.error,
    this.padding = const EdgeInsets.all(15),
    this.borderRadiusCircularValue = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        style: const TextStyle(color: whiteColor),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: fillColor,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          filled: true,
          hintText: isRequiredField ? '$hint*' : hint,
          hintStyle: const TextStyle(color: inputHintTextColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadiusCircularValue),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
          errorText: error,
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
        autocorrect: false,
        textInputAction: TextInputAction.done,
        obscureText: isPasswordField,
        maxLines: 1,
        onChanged: onChanged,
      ),
    );
  }
}
