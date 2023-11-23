import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumBluegray50 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray50,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallOpenSansGray700 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.gray700,
      );
  // Headline text style
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Roboto text style
  static get robotoOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  // Title text style
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
