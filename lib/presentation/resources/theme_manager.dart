import 'package:flutter/material.dart';
import 'package:store_rest_api/presentation/resources/values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main Colors
    primaryColor: ColorManger.lightScaffoldColor,
    primaryColorLight: ColorManger.lightCardColor,
    //primaryColorDark: ColorManger.darkPrimary,
    disabledColor: ColorManger.grey,
    splashColor: ColorManger.lightScaffoldColor,
    //ripple effect color
    backgroundColor: ColorManger.lightScaffoldColor,

    //card View Theme
    cardTheme: CardTheme(
      color: ColorManger.lightCardColor,
      shadowColor: ColorManger.grey,
      elevation: AppSize.s4,
    ),
    iconTheme: IconThemeData(
      color: ColorManger.lightIconsColor,
    ),
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorManger.black, selectionColor: ColorManger.blue),
    //App Bar theme
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: ColorManger.lightIconsColor, size: 16),
      backgroundColor: ColorManger.lightScaffoldColor,
      centerTitle: true,
      //color: ColorManger.lightScaffoldColor,
      elevation: AppSize.s0,
      shadowColor: ColorManger.lightScaffoldColor,
      titleTextStyle: TextStyle(
          color: ColorManger.lightTextColor,
          fontSize: FontSize.s16,
          fontWeight: FontWeight.bold),
    ),
    //Button Theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManger.grey,
      buttonColor: ColorManger.lightScaffoldColor,
      splashColor: ColorManger.lightScaffoldColor,
    ),
    //elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
              color: ColorManger.lightScaffoldColor, fontSize: FontSize.s17),
          backgroundColor: ColorManger.lightScaffoldColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          )),
    ),
    // textTheme: TextTheme(
    //     headlineLarge: getSemiBoldStyle(
    //         color: ColorManger.darkGrey, fontSize: FontSize.s16),
    //     displayLarge: getSemiBoldStyle(color: ColorManger.darkGrey,fontSize: FontSize.s16),
    //     bodySmall: getRegularStyle(color: ColorManger.grey),
    //     headlineMedium: getRegularStyle(color: ColorManger.darkGrey,fontSize: FontSize.s14),
    //     bodyLarge: getRegularStyle(color: ColorManger.grey),
    //     titleMedium: getMediumStyle(
    //         color: ColorManger.primary, fontSize: FontSize.s14)),  //Text Theme

    //input Decoration theme
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: ColorManger.lightIconsColor,
      filled: true,
      fillColor: ColorManger.lightScaffoldColor,
      //content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(color: ColorManger.lightIconsColor, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorManger.grey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorManger.error),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
          borderSide:  const BorderSide(color: ColorManger.lightScaffoldColor, width: AppSize.s1_5)),

      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
          borderSide: BorderSide(
              color: ColorManger.lightIconsColor, width: AppSize.s1_5)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
          borderSide:
              BorderSide(color: ColorManger.error, width: AppSize.s1_5)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
          borderSide: BorderSide(
              color: ColorManger.lightIconsColor, width: AppSize.s1_5)),
    ),
  );
}