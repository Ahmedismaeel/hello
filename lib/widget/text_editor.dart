import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello/helper/app_color.dart';
import 'package:hello/helper/responsive.dart';

class DefaultTextEdit extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final String? hintText;
  final String? labelText;
  final Widget? icon;
  final bool? obscureText;
  final Widget? suffixIcon;
  final bool? autofocus;
  final double? fontSize;
  final int? maxLines;
  final TextInputFormatter? formatter;
  const DefaultTextEdit(
      {Key? key,
      @required this.keyboardType,
      @required this.controller,
      @required this.onSaved,
      @required this.validator,
      @required this.hintText,
      @required this.labelText,
      this.icon,
      @required this.obscureText,
      this.suffixIcon,
      this.onChanged,
      this.fontSize,
      this.maxLines,
      this.autofocus,
      this.formatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      inputFormatters: formatter != null ? [formatter!] : null,
      onSaved: onSaved,
      validator: validator,
      obscureText: obscureText!,
      onChanged: onChanged,
      autofocus: autofocus ?? false,
      style: TextStyle(
        fontSize: fontSize ?? width(20),
      ),
      maxLines: maxLines == 1 ? null : 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: AppColor.shade, fontSize: width(16)),
        labelText: labelText,
        labelStyle: TextStyle(fontSize: width(12)),
        contentPadding: EdgeInsets.fromLTRB(
            width(20.0), width(15.0), width(20.0), width(15.0)),
        prefixIcon: icon == null
            ? null
            : SizedBox(
                width: width(20),
                child: Row(
                  children: [
                    SizedBox(width: width(15)),
                    ZoomIn(child: icon!),
                  ],
                ),
              ),
        suffixIcon: suffixIcon,
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(width(20))),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.error,
            ),
            borderRadius: BorderRadius.circular(width(20))),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.error,
            ),
            borderRadius: BorderRadius.circular(width(20))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.accent,
            ),
            borderRadius: BorderRadius.circular(width(20))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(width(20))),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(width(20))),
      ),
    );
  }
}
