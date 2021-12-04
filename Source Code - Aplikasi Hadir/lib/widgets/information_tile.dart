import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class InformationWidget extends StatelessWidget {
  String imageUrl;

  // ignore: use_key_in_widget_constructors
  InformationWidget(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 268,
      height: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
