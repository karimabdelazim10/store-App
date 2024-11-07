import 'package:flutter/material.dart';
import 'package:headphone_app/models/product_model.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key, required this.grid});

  final ProductModel grid;

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
      height: 150,
      width: 150,
      child: Card(
        shadowColor: Colors.grey[100],
        child: Image.asset(grid.image),
      ),
    );
  }
}
