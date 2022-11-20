import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextInputType keyBoardType;
  final String hintTexT;
  final Widget prefixIcon;
  final String initialValue;
  final Function(String) onChanged;

  const CustomTextFieldWidget({
    super.key,
    required this.keyBoardType,
    required this.hintTexT,
    required this.prefixIcon,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChanged,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.green,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.green,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.all(18.0)),
    );
  }
}
