
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constans.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hint,
    this.maxLine,
    required this.textInputType,
    required this.textInputAction,
    this.isObscure = false,
    this.controller,
    this.onChanged,
    this.readOnly,
    this.isFilled,
    this.filledColor,
    this.marginBottom,
    this.minimumHeight,
    this.maximumHeight,
    this.autoFocus,
    this.isEnabled = true,
    this.validator,
    this.labelText,
  });

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hint;
  final int? maxLine;
  final TextInputType textInputType;
  final bool? isEnabled;

  final TextInputAction? textInputAction;
  final bool? isObscure;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool? readOnly;
  final bool? isFilled;
  final Color? filledColor;
  final double? marginBottom;
  final double? minimumHeight;
  final double? maximumHeight;
  final bool? autoFocus;
  final String? Function(String?)? validator;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          obscureText: isObscure ?? false,
          controller: controller,
          readOnly: readOnly ?? false,
          validator: validator,
          onChanged: onChanged,
          maxLines: maxLine ?? 1,
          keyboardType: textInputType,
          enabled: isEnabled ?? true,
          textInputAction: textInputAction,
          style: TextStyle(
            color: Constants.colorOnSecondary,
            fontFamily: Constants.cairoRegular,
            fontSize: 14.sp,
          ),
          autofocus: autoFocus ?? false,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.all(
            //   0,
            // ),
            alignLabelWithHint: true,
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(8.r),
            //   borderSide: const BorderSide(
            //     color: Constants.colorTextLight3,
            //     width: 1,
            //   ),
            // ),
            // errorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(8.r),
            //   borderSide: const BorderSide(
            //     color: Colors.red,
            //     width: 1,
            //   ),
            // ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(8.r),
            //   borderSide: const BorderSide(
            //     color: Constants.colorTextLight3,
            //     width: 1,
            //   ),
            // ),
            constraints: BoxConstraints(
              minHeight: minimumHeight ?? 52.h,
              maxHeight: maximumHeight ?? 52.h,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Constants.colorTextLight3,
                width: 1,
              ),
            ),
            suffixIcon: suffixIcon,
            prefixIconConstraints: prefixIcon == null
                ? const BoxConstraints(minWidth: 16, minHeight: 0)
                : const BoxConstraints(minWidth: 16, minHeight: 16),
            prefixIcon: prefixIcon ?? const SizedBox(),
            fillColor: filledColor ?? Colors.transparent,
            filled: isFilled ?? false,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Constants.colorTextLight3,
                width: 1,
              ),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: Constants.colorSecondary,
              fontFamily: Constants.cairoRegular,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}
