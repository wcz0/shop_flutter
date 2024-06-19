import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_controller.dart';
import 'package:shop_flutter/app/data/local/preference/preference_manager.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class MainController extends BaseController {
  final _selectedMenuCodeController = MenuCode.home.obs;

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  onMenuSelected(int index) async {
    switch (index) {
      case 0:
        _selectedMenuCodeController(MenuCode.home);
        break;
      case 1:
        _selectedMenuCodeController(MenuCode.category);
        break;
      case 2:
        if (await _isLogin()) _selectedMenuCodeController(MenuCode.message);
        break;
      case 3:
        if (await _isLogin()) _selectedMenuCodeController(MenuCode.cart);
        break;
      case 4:
        if (await _isLogin()) _selectedMenuCodeController(MenuCode.profile);
        break;
    }
  }

  Future<bool> _isLogin() async {
    var pref = Get.find<PreferenceManager>(tag: (PreferenceManager).toString());
    String token = await pref.getString(PreferenceManager.keyToken);
    if (token.isEmpty) {
      Get.offNamed(Routes.login);
      return false;
    }
    return true;
  }
}
