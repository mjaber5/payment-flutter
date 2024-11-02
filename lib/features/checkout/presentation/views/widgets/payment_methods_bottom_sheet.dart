import 'package:flutter/material.dart';
import 'package:payment_flutter/core/widgets/custom_button.dart';
import 'package:payment_flutter/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 18),
          const PaymentMethodsListView(),
          const SizedBox(height: 32),
          CustomButton(
            textTitle: 'Continue',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaymentDetailsView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
