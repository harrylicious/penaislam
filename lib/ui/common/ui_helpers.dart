import 'dart:math';
import 'package:flutter/material.dart';

// Horizontal Spacing
const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceMedium = SizedBox(width: 20.0);
const Widget horizontalSpaceLarge = SizedBox(width: 30.0);

// Vertical Spacing
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceMedium = SizedBox(height: 20.0);
const Widget verticalSpaceLarge = SizedBox(height: 30.0);
const Widget verticalSpaceMassive = SizedBox(height: 50.0);

// Screen Size Helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(
  BuildContext context, {
  int dividedBy = 1,
  double offsetBy = 0,
  double max = double.infinity,
}) {
  return min(screenHeight(context) / dividedBy + offsetBy, max);
}

double screenWidthFraction(
  BuildContext context, {
  int dividedBy = 1,
  double offsetBy = 0,
  double max = double.infinity,
}) {
  return min(screenWidth(context) / dividedBy + offsetBy, max);
}

// Custom Spacing
Widget verticalSpace(double height) => SizedBox(height: height);
Widget horizontalSpace(double width) => SizedBox(width: width);

// Responsive Spacing
double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidth(context) / 25;

// Screen Width Fractions
double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);
double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);
double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

// Responsive Font Sizes
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, 12, 14);
double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, 14, 16);
double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, 16, 18);
double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, 18, 22);
double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, 24, 28);

double getResponsiveFontSize(
  BuildContext context,
  double fontSize,
  double maxFontSize,
) {
  double screenWidth = MediaQuery.of(context).size.width;
  double scaleFactor = screenWidth / 375; // Based on standard iPhone width
  double scaledFontSize = fontSize * scaleFactor;
  return min(scaledFontSize, maxFontSize);
}

// Reusable UI Components
Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, thickness: 1, height: 1),
    verticalSpaceMedium,
  ],
);

// Card Shadow
BoxShadow defaultCardShadow = BoxShadow(
  color: Colors.black.withOpacity(0.1),
  blurRadius: 8,
  offset: const Offset(0, 2),
);
