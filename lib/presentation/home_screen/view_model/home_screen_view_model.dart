import 'package:flutter/material.dart';
import 'package:store_rest_api/presentation/base/base_view_model.dart';

class HomeScreenViewModel extends BaseViewModel with BaseViewModelInputs ,BaseViewModelOutputs {

  TextEditingController? textEditingController ;
  @override
  void dispose() {
    textEditingController!.dispose();
  }

  @override
  void start() {
    textEditingController = TextEditingController();
  }

}