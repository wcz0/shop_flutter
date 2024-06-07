import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_controller.dart';
import 'package:shop_flutter/app/data/local/preference/preference_manager.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class MainController extends BaseController {
  final _selectedMenuCodeController = MenuCode.home.obs;

  // final PreferenceManager pref = Get.find();

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  // 菜单白名单
  static const List<MenuCode> white = [
    MenuCode.home,
    MenuCode.category,
  ];

  onMenuSelected(MenuCode menuCode) async {
    // String token = await pref.getString('token');
    // if (token == '') {
    //   if (!white.contains(menuCode)) {
    //     Get.offAllNamed(Routes.login);
    //   }
    // }
    _selectedMenuCodeController(menuCode);
  }
}
