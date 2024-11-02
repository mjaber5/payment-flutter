import 'package:flutter/material.dart';
import 'package:payment_flutter/core/widgets/custom_button.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        const SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.019,
              ),
              child: const CustomButton(),
            ),
          ),
        ),
      ],
    );
  }
}
