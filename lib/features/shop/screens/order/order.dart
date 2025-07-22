import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/features/shop/screens/order/widgets/orders_list.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text('Đơn hàng của tôi', style: Theme.of(context).textTheme.headlineSmall)),

      body: Padding(padding: UPadding.screenPadding,child: UOrdersListItems()),
    );
  }
}
