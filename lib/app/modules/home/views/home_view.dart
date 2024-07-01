import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:shop_flutter/app/modules/home/widget/home_search_bar_widget.dart';
import 'package:shop_flutter/gen/assets.gen.dart';

class HomeView extends BaseView<HomeController> {
  HomeView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        HomeSearchBarWidget(),
        // swiper(context),
        category(context),
      ],
    );
  }

  Widget swiper(BuildContext context) {
    return Swiper(itemCount: 1);
  }

  Widget category(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: [
            {'image': Assets.images.all.image(), 'label': '全部商品'},
            {'image': Assets.images.coupon.image(), 'label': '领取优惠券'},
            {'image': Assets.images.gift.image(), 'label': '精品推荐'},
            {'image': Assets.images.news.image(), 'label': '新闻资讯'},
            {'image': Assets.images.bargain.image(), 'label': '助力砍价'},
            {'image': Assets.images.seckill.image(), 'label': '限时秒杀'},
            {'image': Assets.images.point.image(), 'label': '积分商城'},
            {'image': Assets.images.rebate.image(), 'label': '团长返佣'},
            {'image': Assets.images.footprint.image(), 'label': '用户足迹'},
            {'image': Assets.images.prizeWheel.image(), 'label': '幸运转盘'},
          ].map((item) {
            return Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    item['image'] as String,
                    fit: BoxFit.cover,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                const SizedBox(height: 4.0), // 图片和文字之间的间距
                Center(
                  child: Text(
                    item['label'].toString(),
                    style: const TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
