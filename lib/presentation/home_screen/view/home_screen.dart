import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_rest_api/presentation/home_screen/constants/constant.dart';
import 'package:store_rest_api/presentation/home_screen/view_model/home_screen_view_model.dart';
import 'package:store_rest_api/presentation/home_screen/widgets/sale_widget.dart';
import 'package:store_rest_api/presentation/resources/color_manager.dart';
import 'package:store_rest_api/presentation/resources/strings_manager.dart';
import 'package:store_rest_api/presentation/resources/values_manager.dart';
import 'package:store_rest_api/presentation/shared_widgets/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    HomeScreenViewModel().start();
    super.initState();
  }

  @override
  void dispose() {
    HomeScreenViewModel().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.homePage,
        ),
        leading: AppBarWidget(
          icon: IconlyBold.category,
          function: () {},
        ),
        actions: [AppBarWidget(function: () {}, icon: IconlyBold.user3)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p14),
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s8,
            ),
            TextField(
              controller: HomeScreenViewModel().textEditingController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  hintText: AppStrings.search,
                  suffixIcon: Icon(IconlyLight.search)),
            ),
            const SizedBox(
              height: AppSize.s8,
            ),
            SizedBox(
              height: size.height * AppSize.s0_25,
              child: Swiper(
                itemCount: itemCount,
                itemBuilder: (ctx,index){
                  return  const SaleWidget();
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}