import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/ProductsModel.dart';
import '../../home_screen/constants/constant.dart';
import 'feeds_widget.dart';

class FeedsGrid extends StatelessWidget {
  const FeedsGrid({Key? key, required this.productsModel}) : super(key: key);
  final List<ProductsModel> productsModel;

  @override
  Widget build(BuildContext context) {


    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productsModel.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (ctx, index) {
          return ChangeNotifierProvider.value(
            value: productsModel[index],
            child: const FeedsWidget(),
          );
        });
  }
}