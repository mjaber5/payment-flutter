import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_flutter/core/widgets/custom_button.dart';
import 'package:payment_flutter/features/checkout/presentation/views/thank_you_view.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_flutter/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.019,
              ),
              child: CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('payment success');
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ThankYouView(),
                      ),
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ThankYouView(),
                      ),
                    );
                  }
                },
                textTitle: 'Pay',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
