import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/home/controllers/product_controller.dart';

class ProductView extends BaseView<ProductController> {
  ProductView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        swiper(context),
        main(context)
      ],
    );
  }

  Widget swiper(BuildContext context) {
    return Swiper(itemCount: 1);
  }

  Widget main(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              '0.01起',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.0,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(Icons.camera_indoor_sharp),
            )
          ],
        ),
        const Text(
          '标题标题',
          style: TextStyle(fontSize: 16.0),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '划线价: ￥60.00',
              style: TextStyle(
                color: Colors.red,
                fontSize: 8.0,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            Text(
              '库存: 334束',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 8.0,
              ),
            ),
            Text(
              '销量: 256束',
              style: TextStyle(fontSize: 8.0, color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
