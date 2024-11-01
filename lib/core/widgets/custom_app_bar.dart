import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_flutter/core/util/styles.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/ArrowBack.svg',
        height: 20,
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
