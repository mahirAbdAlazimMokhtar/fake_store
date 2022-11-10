import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:page_transition/page_transition.dart';
import 'package:store_rest_api/presentation/feeds_screen/feeds_screen.dart';
import 'package:store_rest_api/presentation/feeds_screen/widgets/feeds_grid.dart';
import 'package:store_rest_api/presentation/home_screen/view/widgets/custom_text_field.dart';
import 'package:store_rest_api/presentation/home_screen/view/widgets/swiper_widget.dart';
import 'package:store_rest_api/presentation/home_screen/view_model/home_screen_view_model.dart';
import 'package:store_rest_api/presentation/resources/color_manager.dart';
import 'package:store_rest_api/presentation/resources/strings_manager.dart';
import 'package:store_rest_api/presentation/resources/styles_manager.dart';
import 'package:store_rest_api/presentation/resources/values_manager.dart';
import 'package:store_rest_api/presentation/shared_widgets/app_bar_widget.dart';
import 'package:store_rest_api/presentation/user/view/users_screen.dart';
import 'package:store_rest_api/services/api/api_handler.dart';

import '../../../model/ProductsModel.dart';
import '../../category/categories_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
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
       return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.homePage,
        ),
        leading: AppBarWidget(
          icon: IconlyBold.category,
          function: () {
            Navigator.push(
                context,
                PageTransition(
                    child: const CategoriesScreen(),
                    type: PageTransitionType.rotate,
                    alignment: Alignment.center));
          },
        ),
        actions: [
          AppBarWidget(
              function: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const UsersScreen(),
                        type: PageTransitionType.rotate,
                        alignment: Alignment.center));
              },
              icon: IconlyBold.user3)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p14),
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s8,
            ),
            const CustomTextField(),
            const SizedBox(
              height: AppSize.s8,
            ),
            SwiperWidget(size: size, swiperLayout: SwiperLayout.TINDER),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.allProducts,
                  style: getRegularStyle(color: ColorManger.lightTextColor),
                ),
                AppBarWidget(
                    function: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const FeedsScreen(),
                              type: PageTransitionType.rotate,
                              alignment: Alignment.center));
                    },
                    icon: IconlyLight.arrowRight2),
              ],
            ),
            const SizedBox(
              height: AppSize.s8,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FutureBuilder<List<ProductsModel>>(
                        future: APIHandler.getAllProducts(limit: '10'),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.data == null) {
                            return const Center(
                              child: Text('No Products added Yet'),
                            );
                          } else if (snapshot.hasError) {
                            return Center(
                              child:
                                  Text('an error occurred ${snapshot.error}'),
                            );
                          }
                          return FeedsGrid(productsList: snapshot.data!);
                        })
                    //FeedsGrid(productsModel: productsModel)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// AppBar buildAppBar() {
//   return AppBar(
//     title: const Text(
//       AppStrings.homePage,
//     ),
//     leading: AppBarWidget(
//       icon: IconlyBold.category,
//       function: () {
//         Navigation.push
//       },
//     ),
//     actions: [AppBarWidget(function: () {}, icon: IconlyBold.user3)],
//   );
// }
}