import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../resources/strings_manager.dart';
import '../../view_model/home_screen_view_model.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: HomeScreenViewModel().textEditingController,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
          hintText: AppStrings.search,
          suffixIcon: Icon(IconlyLight.search)),
    );
  }
}