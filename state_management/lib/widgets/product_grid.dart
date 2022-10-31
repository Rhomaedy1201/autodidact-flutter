import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/providers/all_products.dart';
import 'package:state_management/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    final allProduct = productData.allProducts;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx, i) => ProductItem(
        loadedProducts[i].id,
        loadedProducts[i].title,
        loadedProducts[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
