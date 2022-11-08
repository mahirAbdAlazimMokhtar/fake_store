import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:store_rest_api/presentation/home_screen/view/widgets/sale_widget.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';
import '../../constants/constant.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({
    SwiperLayout swiperLayout = SwiperLayout.STACK,
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * AppSize.s0_25,
      width: double.infinity,
      child: Swiper(
        itemCount: itemCount,
        itemWidth: itemWidth,
        //viewportFraction: 0.8,
        scale: scale,
        autoplay: true,
        itemBuilder: (ctx, index) {
          return const SaleWidget();
        },
        pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(
                activeColor: ColorManger.error,
                color: ColorManger.lightScaffoldColor)),
      ),
    );
  }
}