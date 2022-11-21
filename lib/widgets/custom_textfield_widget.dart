import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final TextInputType keyBoardType;
  final String hintTexT;
  final Widget prefixIcon;
  final TextEditingController? controller;
  //final String initialValue;
  //final Function(String) onChanged;

  const CustomTextFieldWidget({
    super.key,
    required this.keyBoardType,
    required this.hintTexT,
    required this.prefixIcon,
    this.controller,
    //required this.initialValue,
    //required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        //initialValue: initialValue,
        //onChanged: onChanged,
        style: const TextStyle(color: Colors.black),
        controller: controller,
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
          contentPadding: const EdgeInsets.all(18.0),
        ),
      ),
    );
  }
}
