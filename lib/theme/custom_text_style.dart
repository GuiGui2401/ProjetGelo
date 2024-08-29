// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inknutAntiqua {
    return copyWith(
      fontFamily: 'Inknut Antiqua',
    );
  }

  TextStyle get irishGrover {
    return copyWith(
      fontFamily: 'Irish Grover',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Headline text style
  static get headlineMediumIrishGrover =>
      theme.textTheme.headlineMedium!.irishGrover.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumOnError => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineMediumRed70001 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.red70001,
      );
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
// Title text style
  static get titleLargeIrishGrover =>
      theme.textTheme.titleLarge!.irishGrover.copyWith(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.61),
      );
  static get titleLargePrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargePrimaryContainer_2 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.54),
      );
  static get titleLargePrimaryContainer_3 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.59),
      );
  static get titleLargeRed800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red800,
      );
  static get titleLargeRed900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red900,
      );
  static get titleMediumInriaSansRed800 =>
      theme.textTheme.titleMedium!.inriaSans.copyWith(
        color: appTheme.red800,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
}
