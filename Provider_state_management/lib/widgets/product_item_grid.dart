import 'package:flutter/material.dart';
import 'package:provider_state_management/providers/products_provider.dart';
import '../widgets/product_item.dart';
import '../providers/product.dart';
import '../widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductItemGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProviders>(context, listen: false);
    final products = productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
      ),

      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i] ,
        // create: (BuildContext context) => products[i],
        value: products[i],
        child: ProductItem(
        ),
      ),
      itemCount: products.length,
    );
  }
}
