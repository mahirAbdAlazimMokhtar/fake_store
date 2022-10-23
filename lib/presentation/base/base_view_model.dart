abstract class BaseViewModel extends BaseViewModelInputs with BaseViewModelOutputs{
  //shared business logic to view model like variables functions ..etc
}

abstract class BaseViewModelInputs {
  void start(); //call with the ui run
  void dispose(); //call when the ui is dies or finished
}

abstract class BaseViewModelOutputs {}