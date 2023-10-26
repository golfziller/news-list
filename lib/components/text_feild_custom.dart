import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_news/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    required this.keyboardType,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.kDarkGreen,
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: AppColors.kDarkGreen,
          ),
      // GoogleFonts.poppins(
      //   color: AppColors.kDarkGreen,
      //   fontWeight: FontWeight.w600,
      //   fontSize: 15.0,
      // ),
      decoration: InputDecoration(
        // contentPadding: const EdgeInsets.all(18.0),
        filled: true,
        fillColor: AppColors.kWhite,
        prefixIcon: Icon(
          icon,
          size: 24.0,
          color: AppColors.kDarkGreen,
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.kGraySmoke,
            ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: AppColors.kGraySmoke),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: AppColors.kGraySmoke),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
