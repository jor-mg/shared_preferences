import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final TextInputType keyBoardType;
  final String hintTexT;
  final Widget prefixIcon;
  final String initialValue;
  final Function(String) onChanged;

  const TextFieldCustomWidget({
    super.key,
    required this.keyBoardType,
    required this.hintTexT,
    required this.prefixIcon,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        keyboardType: keyBoardType,
        style: GoogleFonts.poppins(),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              width: 2,
              color: Color(0xFF336bfe),
            ),
          ),
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          hintText: hintTexT,
          hintStyle: GoogleFonts.poppins(),
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.red,
        ),
      ),
    );
  }
}
