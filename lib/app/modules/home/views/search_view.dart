import 'package:bruno/bruno.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/core/utils/tools.dart';
import 'package:shop_flutter/app/modules/home/controllers/search_controller.dart';
import 'package:shop_flutter/app/modules/home/widget/search_product_item_widget.dart';

class SearchView extends BaseView<SearchController> {
  SearchView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: <Widget>[
        BrnAppBar(
          title: Row(
            children: [
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Obx(
                  () => TextField(
                    controller: controller.textController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        // size: 14.0,
                      ),
                      suffixIcon: controller.showClearIcon.value
                          ? IconButton(
                              onPressed: controller.onClear,
                              icon: const Icon(Icons.clear),
                            )
                          : null,
                      hintText: '搜索商品',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                    onSubmitted: (text) => controller.onSearch(),
                    onChanged: (text) => controller.onTextClear(),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Tools.debounce(controller.onSearch);
                },
                child: const Text(
                  '搜索',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Expanded(child: Obx(() {
          if (controller.searchResult.isEmpty) {
            return const Center(
              child: Text('暂无数据'),
            );
          }
          return EasyRefresh(
            onLoad: controller.onLoad,
            child: ListView.builder(
              itemCount: controller.searchResult.length,
              itemBuilder: (context, index) {
                final item = controller.searchResult[index];
                return SearchProductItemWidget(model: item);
              },
            ),
          );
        }))
      ],
    );
  }
}
