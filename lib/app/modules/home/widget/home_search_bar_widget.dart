import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:shop_flutter/app/core/base/base_widget_mixin.dart';

class HomeSearchBarWidget extends StatelessWidget with BaseWidgetMixin {
  HomeSearchBarWidget({super.key});

  @override
  Widget body(BuildContext context) {
    return BrnAppBar(
      leading: const Center(
        child: Text(
          '电商',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      title: Container(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: () {
              print('Search');
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
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
          )),
      titleAlignment: Alignment.centerLeft,
      backgroundColor: Colors.red,
    );
  }
}
