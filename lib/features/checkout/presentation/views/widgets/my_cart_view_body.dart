import 'package:flutter/material.dart';
import 'package:payment_flutter/core/widgets/custom_button.dart';
import 'package:payment_flutter/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/custom_divider.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 18),
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(height: 25),
          const OrderInfoItem(title: r'Order Subtotal', value: '42.97'),
          const SizedBox(height: 3),
          const OrderInfoItem(title: r'Discount', value: '0'),
          const SizedBox(height: 3),
          const OrderInfoItem(title: r'Shipping', value: '8'),
          const SizedBox(height: 17),
          const CustomDivider(),
          const SizedBox(height: 17),
          const TotalPrice(total: 'Total', value: '50.97'),
          const SizedBox(height: 20),
          CustomButton(
            textTitle: 'Complete Payment',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PaymentDetailsView(),
                ),
              );
            },
          ),
          const SizedBox(height: 12)
        ],
      ),
    );
  }
}
