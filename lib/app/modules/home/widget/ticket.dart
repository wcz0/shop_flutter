import 'package:flutter/material.dart';
import 'package:money2/money2.dart';
import 'package:shop_flutter/app/core/base/base_widget_mixin.dart';

class Ticket extends StatelessWidget with BaseWidgetMixin {
  final Money amount;
  final Money isCanAmount;

  Ticket({
    super.key,
    required this.amount,
    required this.isCanAmount,
  });

  @override
  Widget body(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  amount.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  '满${isCanAmount.toString()}元可用',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 1,
            color: Colors.white,
            margin: const EdgeInsets.symmetric(
              vertical: 16,
            ),
          ),
          const Expanded(
            flex: 1,
            child: Center(
              child: Text(
                '立即领取',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
