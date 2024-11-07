import 'package:flutter/material.dart';
import 'package:headphone_app/models/product_grid.dart';
import 'package:headphone_app/models/product_model.dart';
import 'package:headphone_app/repeated/container_list.dart';

class ScreenPage extends StatelessWidget {
  ScreenPage({
    super.key,
  });

  final List<ProductModel> items = [
    ProductModel(image: 'assets/images/headphonebr.png', name: 'Best seller'),
    ProductModel(image: 'assets/images/iphine15br.png', name: 'iphone 15'),
    ProductModel(image: 'assets/images/iphone14br.png', name: 'iphone 14'),
    ProductModel(image: 'assets/images/headphone2br.png', name: 'Head Phone'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'me',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            iconSize: 30,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Card(
                  elevation: 7,
                  child: Row(
                    children: [
                      const Text('search here'),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                        alignment: Alignment.centerRight,
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ContainerList(
                      height: 1,
                      width: 150,
                      product: items[index],
                    );
                  }),
            ),
            Expanded(
              child: Container(
                  child: GridView.builder(
                      itemCount: items.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return ProductGrid(grid: items[index]);
                      })),
            ),
            const Text('solo pro')
          ],
        ),
      ),
    );
  }
}
