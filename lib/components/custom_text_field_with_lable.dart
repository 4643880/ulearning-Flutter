import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ulearning_app/components/custom_spacer.dart';
import 'package:ulearning_app/helper/app_colors.dart';
import 'package:ulearning_app/helper/app_text_style.dart';

class CustomTextFieldNewWithLabel extends StatefulWidget {
  CustomTextFieldNewWithLabel({
    Key? key,
    this.labelText,
    this.outerLabelText,
    this.initialText,
    this.prefixSvg,
    this.prefixPadding,
    this.prefixOnTap,
    this.prefixHeight,
    this.prefixWidth,
    this.suffixSvg,
    this.suffixPadding,
    this.suffixOnTap,
    this.suffixHeight,
    this.suffixWidth,
    this.hintText,
    this.prefixText,
    this.inputFormatters,
    required this.onSaved,
    required this.validator,
    this.onTap,
    this.readOnly,
    this.obscure,
    this.enabled,
    this.controller,
    this.autoValidateMode,
    this.onChanged,
    this.maxLines,
    this.disableBorder,
    this.isDisable,
    this.fillColor,
    this.hintStyle,
    required this.filled,
    this.textStyle,
    this.cursorColor,
    this.autoFocused,
    this.onFieldSubmit,
    this.prefixWidget,
    this.hintDirection,
    this.textDirection,
    this.focusNode,
    this.capitalization,
    this.inputType,
    this.isDense,
    this.isRequired,
    this.contentPadding,
    this.prefixIconColor,
    this.suffixIconColor,
    this.borderRadius,
    this.showBorder = true,
    this.isLabelRequired = true,
    this.onEditingComplete,
    this.maxLength,
  }) : super(key: key);
  final String? labelText;
  final String? outerLabelText;
  final String? initialText;
  final String? suffixSvg, prefixSvg;
  final Widget? prefixWidget;
  final String? hintText;
  final String? prefixText;
  final int? maxLines;
  TextDirection? hintDirection;
  final TextStyle? textStyle, hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  bool filled;
  bool? showBorder;

  EdgeInsetsGeometry? contentPadding;
  bool? readOnly,
      obscure,
      enabled,
      disableBorder,
      autoFocused,
      isDense,
      isRequired,
      isDisable;
  FormFieldValidator<String>? validator;
  FormFieldSetter<String>? onSaved, onFieldSubmit;
  VoidCallback? onTap;
  final VoidCallback? suffixOnTap, prefixOnTap;
  final EdgeInsets? suffixPadding, prefixPadding;
  final double? suffixHeight, suffixWidth, prefixHeight, prefixWidth;
  TextEditingController? controller;
  AutovalidateMode? autoValidateMode;
  void Function(String? text)? onChanged;
  final Color? fillColor, cursorColor;
  final TextDirection? textDirection;
  final FocusNode? focusNode;
  final TextCapitalization? capitalization;
  final TextInputType? inputType;
  final Color? prefixIconColor, suffixIconColor;
  final double? borderRadius;
  final bool? isLabelRequired;
  final int? maxLength;
  final Function()? onEditingComplete;

  @override
  State<CustomTextFieldNewWithLabel> createState() =>
      _CustomTextFieldNewWithLabelState();
}

class _CustomTextFieldNewWithLabelState
    extends State<CustomTextFieldNewWithLabel> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isLabelRequired == true)
          Row(
            children: [
              Text(
                widget.outerLabelText ?? "",
                style: AppTextStyle.bodySmallMedium,
              ),
              widget.isRequired == true
                  ? Text(
                      "*",
                      style: AppTextStyle.bodySmallBold.copyWith(
                        color: AppColors.error,
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        if (widget.isLabelRequired == true)
          VerticalSpacer(
            space: 8.h,
          ),
        TextFormField(
          maxLength: widget.maxLength,
          textDirection: widget.textDirection,
          maxLines: widget.obscure ?? false ? 1 : widget.maxLines ?? 1,
          enabled: (widget.isDisable ?? false) ? false : widget.enabled,
          initialValue: widget.initialText,
          controller: widget.controller,
          // textDirection: TextDirection.rtl,
          style: widget.textStyle != null
              ? widget.textStyle
              : (widget.isDisable ?? false)
                  ? AppTextStyle.bodyNormalRegular
                      .copyWith(color: AppColors.generalOnDisable)
                  : AppTextStyle.bodyNormalRegular,
          obscureText: (widget.obscure ?? false) ? hidePassword : false,
          onChanged: widget.onChanged,
          cursorColor: widget.cursorColor ?? AppColors.primaryElement,
          autovalidateMode: widget.autoValidateMode,
          inputFormatters: widget.inputFormatters,
          autofocus: widget.autoFocused ?? false,
          focusNode: widget.focusNode,
          textCapitalization:
              widget.capitalization ?? TextCapitalization.sentences,
          keyboardType: widget.inputType,
          decoration: InputDecoration(
            isDense: widget.isDense ?? true,
            fillColor: (widget.isDisable ?? false)
                ? AppColors.disable
                : widget.fillColor ?? AppColors.white,
            filled: (widget.isDisable ?? false) ? true : widget.filled,
            focusedBorder: widget.disableBorder == true
                ? null
                : OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.showBorder == true
                          ? AppColors.tertiary
                          : Colors.transparent,
                      width: 1,
                    ),
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 80.r),
                  ),
            hintStyle: widget.hintStyle ??
                AppTextStyle.bodyNormalRegular.copyWith(
                    color: AppColors.generalSecondary,
                    // height: 1.7,
                    fontSize: 14),
            hintTextDirection: widget.hintDirection,
            contentPadding: widget.contentPadding ?? EdgeInsets.zero,

            enabledBorder: widget.disableBorder == true
                ? null
                : OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.showBorder == true
                          ? AppColors.tertiary
                          : Colors.transparent,
                      width: 1,
                    ),
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 80.r),
                  ),
            border: widget.disableBorder == true
                ? null
                : OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.showBorder == true
                          ? AppColors.tertiary
                          : Colors.transparent,
                      width: 1,
                    ),
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 80.r),
                  ),

            errorBorder: widget.disableBorder == true
                ? null
                : OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 80.r),
                    borderSide: BorderSide(
                      color: widget.showBorder == true
                          ? AppColors.error
                          : Colors.transparent,
                      width: 1,
                    ),
                  ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryElement,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 80.r),
            ),
            // errorStyle: AppTextStyle.fieldErrorTextStyle,
            alignLabelWithHint: true,
            labelText: widget.labelText,
            hintText: widget.hintText,

            // prefixIcon: widget.prefixSvg != null
            //     ? Padding(
            //         padding: widget.prefixPadding ??
            //             EdgeInsets.only(
            //               top: 0.h,
            //               bottom: 0.h,
            //               left: 0.w,
            //             ),
            //         child: IconButton(
            //           onPressed: widget.prefixOnTap,
            //           splashRadius: 20.h,
            //           icon: SvgPicture.asset(
            //             widget.prefixSvg!,
            //             height: widget.prefixHeight != null
            //                 ? widget.prefixHeight!.h
            //                 : 24.h,
            //             width: widget.prefixWidth != null
            //                 ? widget.prefixWidth!.h
            //                 : 24.h,
            //             color: widget.prefixIconColor ?? AppColors.generalSecondary,
            //             //   color: widget.focusNode != null
            //             //       ? widget.focusNode!.hasFocus
            //             //           ? AppColors.mainPrimary90
            //             //           :AppColors.mainBlack60
            //             //       : widget.prefixIconColor??AppColors.mainBlack60,
            //           ),
            //         ),
            //       )
            //     : null,
            suffixIconConstraints:
                BoxConstraints(minHeight: 20.h, minWidth: 20.w),
            suffixIcon:
                // widget.obscure ?? false
                //     ? Padding(
                //         padding: EdgeInsets.only(right: 4.w),
                //         child: IconButton(
                //           onPressed: () {
                //             setState(() {
                //               if (hidePassword) {
                //                 hidePassword = false;
                //               } else {
                //                 hidePassword = true;
                //               }
                //             });
                //           },
                //           //splashRadius: 20.h,
                //           icon: SvgPicture.asset(
                //             hidePassword ? AppAssets.eyeSlashSvg : AppAssets.eyeSvg,
                //             height: 20.h,
                //             width: 20.h,
                //             // color: AppColors.secondary,
                //           ),
                //         ),
                //       )
                widget.suffixSvg != null
                    ? Padding(
                        padding: widget.suffixPadding ??
                            EdgeInsets.only(right: 18.w),
                        child: GestureDetector(
                          onTap: widget.suffixOnTap,
                          child: SvgPicture.asset(
                            widget.suffixSvg!,
                            height: widget.suffixHeight != null
                                ? widget.suffixHeight!.h
                                : 20.h,
                            width: widget.suffixWidth != null
                                ? widget.suffixWidth!.h
                                : 20.w,
                          ),
                        ),
                      )
                    : null,
          ),
          readOnly: widget.readOnly ?? false,
          onSaved: widget.onSaved,
          validator: widget.validator,
          onTap: widget.onTap,
          onFieldSubmitted: widget.onFieldSubmit,
          onEditingComplete: widget.onEditingComplete,
        ),
      ],
    );
  }
}
