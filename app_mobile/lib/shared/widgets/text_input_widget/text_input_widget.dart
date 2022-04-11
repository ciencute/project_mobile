import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TextInputLogin extends StatelessWidget {
  final Widget? suffixIcon;
  final int maxLines;
  final String hint;
  final TextInputType inputType;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputAction textInputAction;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String value)? onChanged;
  final FormFieldValidator<String>? validator;
  final String? value;
  TextInputLogin({
    Key? key,
    this.suffixIcon,
    this.maxLines = 1,
    required this.hint,
    this.inputType = TextInputType.text,
    required this.obscureText,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.validator,
    this.value,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: value);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.secondTextColorLight.withOpacity(0.2)),
      child: TextFormField(
        maxLines: maxLines,
        readOnly: readOnly,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onTap: onTap,
        onChanged: onChanged,
        keyboardType: inputType,
        obscureText: obscureText,
        textInputAction: textInputAction,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          suffixIcon: suffixIcon,
          hintStyle: const TextStyle(color: AppColors.secondTextColorLight),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
