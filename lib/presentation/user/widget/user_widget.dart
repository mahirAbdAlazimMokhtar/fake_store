import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:store_rest_api/model/UsersModel.dart';
import 'package:store_rest_api/presentation/resources/styles_manager.dart';
import 'package:store_rest_api/presentation/resources/values_manager.dart';
import '../../resources/color_manager.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final UsersModel usersModelProvider = Provider.of<UsersModel>(context);
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: ListTile(
        leading: FancyShimmerImage(
          imageUrl: usersModelProvider.avatar.toString(),
          height: size.width * AppSize.s0_15,
          width: size.width * AppSize.s0_15,
          boxFit: BoxFit.fill,
          errorWidget: Icon(
            IconlyBold.danger,
            color: ColorManger.error,
            size: AppSize.s20,
          ),
        ),
        title: Text(usersModelProvider.name.toString()),
        subtitle: Text(usersModelProvider.email.toString()),
        trailing: Text(
          usersModelProvider.role.toString(),
          style: getBoldStyle(color: ColorManger.lightIconsColor),
        ),
      ),
    );
  }
}