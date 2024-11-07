import 'package:flutter/material.dart';
import 'package:headphone_app/models/product_model.dart';

class ContainerList extends StatelessWidget {
  const ContainerList({
    super.key,
    required this.height,
    required this.width,
    required this.product,
  });

  final double height;
  final double width;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 10,
            offset: Offset(3, 1),
            blurStyle: BlurStyle.outer)
      ]),
      height: height,
      width: width,
      child: Card(
        shadowColor: Colors.grey[100],
        child: Image.asset(
          product.image,
          colorBlendMode: BlendMode.softLight,
        ),
      ),
    );
  }
}
