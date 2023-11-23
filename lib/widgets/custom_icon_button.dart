import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blueGray50,
                  borderRadius: BorderRadius.circular(31.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blueGray10001.withOpacity(0.5),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        8,
                        8,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
        color: appTheme.blueGray50,
        borderRadius: BorderRadius.circular(21.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray1007f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -1,
              -1,
            ),
          ),
        ],
      );
}
