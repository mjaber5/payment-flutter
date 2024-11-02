import 'package:flutter/material.dart';
import 'package:payment_flutter/core/util/styles.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/bar_code_section.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/custom_divider.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: Styles.style25,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 2),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(height: 38),
            const PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            const SizedBox(height: 18),
            const PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            const SizedBox(height: 20),
            const PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            const SizedBox(height: 25),
            const CustomDivider(),
            const SizedBox(height: 25),
            const TotalPrice(total: 'Total', value: '50.97'),
            const SizedBox(height: 25),
            const CardInfoWidget(),
            const Spacer(),
            const BarCodeSection(),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29,
            )
          ],
        ),
      ),
    );
  }
}
