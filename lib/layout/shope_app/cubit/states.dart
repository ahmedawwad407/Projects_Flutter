
abstract class ShopAppStates{

}

class ShopAppInitialStates extends ShopAppStates{

}
class ShopAppChangeBottomNavBarState extends ShopAppStates{


}

class ShopGetHomeDataLoadingState extends ShopAppStates{

}

class ShopGetHomeDataSuccessState extends ShopAppStates{

}

class ShopGetHomeDataErrorState extends ShopAppStates{
final String error;
ShopGetHomeDataErrorState(this.error);
}

class ShopGetCategoriesDataLoadingState extends ShopAppStates{

}

class ShopGetCategoriesDataSuccessState extends ShopAppStates{

}

class ShopGetCategoriesDataErrorState extends ShopAppStates{
  final String error;
  ShopGetCategoriesDataErrorState(this.error);
}

class NewsGetDataSearchLoadingState extends ShopAppStates{

}

class NewsGetDataSearchSuccessState extends ShopAppStates{

}

class NewsGetDataSearchErrorState extends ShopAppStates{
  final String error;
  NewsGetDataSearchErrorState(this.error);
}

class changeAppModeState extends ShopAppStates{

}


