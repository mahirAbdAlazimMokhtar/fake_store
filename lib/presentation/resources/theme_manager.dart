import 'package:flutter/material.dart';
import 'package:store_rest_api/presentation/resources/values_manager.dart';


import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main Colors
      primaryColor: ColorManger.primary,
      primaryColorLight: ColorManger.lightPrimary,
      primaryColorDark: ColorManger.darkPrimary,
      disabledColor: ColorManger.grey1,
      splashColor: ColorManger.lightPrimary,
      //ripple effect color

      //card View Theme
      cardTheme: CardTheme(
        color: ColorManger.white,
        shadowColor: ColorManger.grey,
        elevation: AppSize.s4,
      ),
      //App Bar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManger.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManger.lightPrimary,
        titleTextStyle:
            getRegularStyle(color: ColorManger.white, fontSize: FontSize.s16),
      ),
      //Button Theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManger.grey1,
        buttonColor: ColorManger.primary,
        splashColor: ColorManger.lightPrimary,
      ),
      //elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(
                color: ColorManger.white, fontSize: FontSize.s17),
            backgroundColor: ColorManger.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12),
            )),
      ),
      //Text Theme
      textTheme: TextTheme(
          headlineLarge: getSemiBoldStyle(
              color: ColorManger.darkGrey, fontSize: FontSize.s16),
          displayLarge: getSemiBoldStyle(color: ColorManger.darkGrey,fontSize: FontSize.s16),
          bodySmall: getRegularStyle(color: ColorManger.grey),
          headlineMedium: getRegularStyle(color: ColorManger.darkGrey,fontSize: FontSize.s14),
          bodyLarge: getRegularStyle(color: ColorManger.grey),
          titleMedium: getMediumStyle(
              color: ColorManger.primary, fontSize: FontSize.s14)),
      //input Decoration theme
      inputDecorationTheme: InputDecorationTheme(
        //content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle:
            getRegularStyle(color: ColorManger.grey, fontSize: FontSize.s14),
        labelStyle:
            getMediumStyle(color: ColorManger.grey, fontSize: FontSize.s14),
        errorStyle: getRegularStyle(color: ColorManger.error),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s8),
            borderSide:
                BorderSide(color: ColorManger.grey, width: AppSize.s1_5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s8),
            borderSide:
                BorderSide(color: ColorManger.primary, width: AppSize.s1_5)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s8),
            borderSide: const BorderSide(
                color: ColorManger.error, width: AppSize.s1_5)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s8),
            borderSide:
                BorderSide(color: ColorManger.primary, width: AppSize.s1_5)),
      ));
}