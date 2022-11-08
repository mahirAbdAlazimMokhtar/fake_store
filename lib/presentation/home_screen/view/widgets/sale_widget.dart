import 'package:flutter/material.dart';
import 'package:store_rest_api/presentation/resources/color_manager.dart';
import 'package:store_rest_api/presentation/resources/strings_manager.dart';
import 'package:store_rest_api/presentation/resources/values_manager.dart';

import '../../../resources/assets_manger.dart';



class SaleWidget extends StatelessWidget {
  const SaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * AppSize.s0_2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s18),
        gradient: LinearGradient(
            colors: [
              ColorManger.linearOne,
              ColorManger.linearTwo,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: const [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManger.containerColor,
                    borderRadius: BorderRadius.circular(AppSize.s16)),
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p14),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        AppStrings.special,
                        style: TextStyle(color: ColorManger.lightScaffoldColor),
                      ),
                      SizedBox(
                        height: AppSize.s18,
                      ),
                      Flexible(
                        child: SizedBox(
                          width: double.infinity,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              AppStrings.off,
                              style: TextStyle(
                                  color: ColorManger.lightScaffoldColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.s18,
          ),
          Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p14),
                child: Image.asset(
                  ImageAssets.customer,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ))
        ],
      ),
    );
  }
}