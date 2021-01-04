import 'package:flutter/material.dart';
import 'package:kpdelivery/views/constants/colors.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool isObscure;
  final TextInputAction inputAction;
  final Function(String) validator;
  final TextInputType inputType;

  const CustomInput(
      {Key key,
      @required this.hintText,
      @required this.labelText,
      this.isObscure = false,
      this.inputAction = TextInputAction.done,
      this.validator,
      this.inputType = TextInputType.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: AppTypography.labelText,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.darkGrey,
            borderRadius: BorderRadius.circular(4.0),
          ),
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: TextFormField(
            style: AppTypography.regularText,
            obscureText: isObscure,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              hintText: hintText,
              hintStyle: AppTypography.inactiveHintText,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              focusColor: Colors.white,
            ),
            validator: validator,
            keyboardType: inputType,
          ),
        ),
      ],
    );
  }
}
