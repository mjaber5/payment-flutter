import 'package:flutter/material.dart';
import 'package:payment_flutter/features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          onPrimary: Colors.black,
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      themeMode: ThemeMode.light,
      home: const MyCartView(),
    );
  }
}
