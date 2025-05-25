import 'package:flutter/material.dart';
import 'package:penaislam_app/ui/common/app_colors.dart';
import 'package:penaislam_app/ui/common/ui_helpers.dart';

// Heading Styles
TextStyle heading1Style(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 28, 34),
      fontWeight: FontWeight.w700,
      color: kcPrimaryColor,
      height: 1.2,
    );

TextStyle heading2Style(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 24, 28),
      fontWeight: FontWeight.w600,
      color: kcDarkTextColor,
      height: 1.2,
    );

TextStyle heading3Style(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 20, 24),
      fontWeight: FontWeight.w600,
      color: kcDarkTextColor,
      height: 1.2,
    );

// Body Styles
TextStyle bodyStyle(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 16, 18),
      fontWeight: FontWeight.normal,
      color: kcMediumGrey,
      height: 1.5,
    );

TextStyle bodyLightStyle(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 16, 18),
      fontWeight: FontWeight.normal,
      color: kcLightGrey,
      height: 1.5,
    );

TextStyle storyContentStyle(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 16, 18),
      fontWeight: FontWeight.normal,
      color: kcDarkTextColor,
      height: 1.8,
    );

// Button Styles
TextStyle buttonTextStyle(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 16, 18),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );

// Caption Styles
TextStyle captionStyle(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 12, 14),
      fontWeight: FontWeight.w400,
      color: kcLightGrey,
    );

// Subtitle Styles
TextStyle subtitleStyle(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 14, 16),
      fontWeight: FontWeight.w500,
      color: kcMediumGrey,
      letterSpacing: 0.2,
    );

// Category Style
TextStyle categoryStyle(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(context, 12, 14),
      fontWeight: FontWeight.w600,
      color: kcPrimaryColor,
      letterSpacing: 0.5,
    );
