import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/product.dart';
import 'package:provider_state_management/screens/cart_screen.dart';
import 'package:provider_state_management/widgets/product_item_grid.dart';
import '../widgets/badge.dart';
import '../providers/cart.dart';

class ProductOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: [
          Consumer<Cart>(
            builder: (_, cartData, ch) => Badge(
              value: cartData.itemCount.toString(),
              color: Colors.red,
              child: IconButton(
                icon: Icon(Icons.shop),
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
            )
          )
        ],
      ),
      body: ProductItemGrid()
    );
  }
}


