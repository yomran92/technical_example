import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/core/config/theme.dart';

import '../config/styles.dart';

class AppTextTitleDataClass {
  final Widget title;
  final EdgeInsetsGeometry? margin;

  AppTextTitleDataClass({required this.title, this.margin});
}

enum AppTextFieldType {
  text,
  password,
}

class AppTextField extends HookWidget {
  const AppTextField({
    this.name = '',
    this.focusNode,
    this.textAlignVertical,
    this.textAlign,
    this.controller,
    this.fillColor,
    this.onSubmitted,
    this.hint = '',
    this.type = AppTextFieldType.text,
    this.suffixIcon,
    this.hintFontColor,
    this.inputFontColor,
    this.fontSize,
    this.onChanged,
    this.validator,
    this.errorText,
    this.textCapitalization,
    this.enabled = true,
    this.keyboardType,
    this.prefixIcon,
    this.errorStyle,
    super.key,
    this.validationKey,
    this.constraints,
    this.maxLines = 1,
    this.maxLength = 120,
    this.enabledBorder,
    this.disabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.appTextTitle,
    this.contentPadding,
    this.formatters = const [],
    this.autofocus,
    this.readOnly,
    this.onTap,
    this.valueTransformer,
    this.editTextKey,
  });

  final BoxConstraints? constraints;
  final AppTextFieldType type;
  final TextCapitalization? textCapitalization;
  final String name;
  final String hint;
  final String? errorText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool enabled;
  final Color? hintFontColor;
  final Color? inputFontColor;
  final Color? fillColor;
  final TextAlignVertical? textAlignVertical;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final double? fontSize;
  final TextStyle? errorStyle;
  final String? Function(String? value)? validator;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSubmitted;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter> formatters;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final AppTextTitleDataClass? appTextTitle;
  final Key? validationKey;
  final EdgeInsetsGeometry? contentPadding;
  final FocusNode? focusNode;
  final bool? autofocus;
  final bool? readOnly;
  final VoidCallback? onTap;
  final Key? editTextKey;

  /// apply some transformation on field value before it is submitted
  final ValueTransformer<String?>? valueTransformer;

  @override
  Widget build(BuildContext context) {
    ///
    final obscureTextState = useState(type == AppTextFieldType.password);

    useEffect(() {
      obscureTextState.value = type == AppTextFieldType.password;
      return;
    }, [type]);

    ///
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (appTextTitle is AppTextTitleDataClass)
          Padding(
            padding: (appTextTitle?.margin) ??
                EdgeInsetsDirectional.only(start: 25.w, bottom: 10.h),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: appTextTitle?.title,
            ),
          ),
        FormBuilderTextField(
          key: validationKey,
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxLength),
            ...formatters
          ],
          name: name,
          style: fontSize != null || inputFontColor != null
              ? appTheme.textTheme.titleMedium?.copyWith(
                  fontSize: fontSize,
                  color: inputFontColor,
                )
              : null,
          focusNode: focusNode,
          textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
          textAlign: textAlign ?? TextAlign.start,
          maxLines: maxLines,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          controller: controller,
          obscureText: obscureTextState.value,
          enabled: enabled,
          keyboardType: keyboardType,
          validator: validator,
          decoration: InputDecoration(
            fillColor: fillColor ?? Colors.white,
            hintText: hint,
            constraints: constraints,
            enabledBorder: enabledBorder,
            focusedBorder: focusedBorder,
            errorBorder: errorBorder,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
            disabledBorder: disabledBorder,
            suffixIcon: _suffixIcon(obscureTextState),
            suffixIconConstraints: BoxConstraints(
              minWidth: 20.w,
              maxWidth: 100.w,
              // minHeight: 48,
            ),
            prefixIcon: prefixIcon,
            prefixIconConstraints: BoxConstraints(
              minWidth: 20.w,
              maxWidth: 100.w,
            ),
            hintStyle: appTheme.inputDecorationTheme.hintStyle
                ?.copyWith(color: hintFontColor, height: 2.3.h),
            errorText: errorText,
            errorStyle: errorStyle,
          ),
          onChanged: (String? value) {
            if (validationKey is GlobalKey<FormFieldState>) {
              (validationKey as GlobalKey<FormFieldState>)
                  .currentState
                  ?.validate();
            }
            onChanged?.call(value);
          },
          onSubmitted: onSubmitted,
          readOnly: readOnly ?? false,
          autofocus: autofocus ?? false,
          onTap: onTap,
          valueTransformer: valueTransformer,
        ),
      ],
    );
  }

  Widget? _suffixIcon(ValueNotifier<bool> obscureText) {
    switch (type) {
      case AppTextFieldType.text:
        return suffixIcon;
      case AppTextFieldType.password:
        return GestureDetector(
          onTap: () => obscureText.value = !obscureText.value,
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              end: 15.w,
            ),
            child: Icon(
              Icons.remove_red_eye_rounded,
              color: obscureText.value
                  ? Styles.colorSecondary2
                  : appTheme.primaryColor,
            ),
          ),
        );
    }
  }
}
