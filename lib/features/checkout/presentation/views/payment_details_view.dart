import 'package:flutter/material.dart';
import 'package:payment_flutter/core/widgets/custom_app_bar.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Payment Details',
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: const PaymentDetailsViewBody(),
    );
  }
}
