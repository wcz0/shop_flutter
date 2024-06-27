import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_widget_mixin.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class HomeSearchBarWidget extends StatelessWidget with BaseWidgetMixin {
  HomeSearchBarWidget({super.key});

  @override
  Widget body(BuildContext context) {
    return BrnAppBar(
      leading: Container(
          color: const Color.fromARGB(255, 247, 96, 85),
          child: const Center(
            child: Text(
              '电商',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          )),
      title: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 247, 96, 85),
              Color.fromARGB(255, 255, 153, 102),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.homeSearch);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8.0),
                Text(
                  '搜索商品',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      titleAlignment: Alignment.centerLeft,
      // backgroundColor: Color.fromARGB(255, 247, 96, 85),
      backgroundColor: Colors.transparent,
    );
  }
}
