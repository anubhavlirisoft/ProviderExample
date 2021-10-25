import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/providers/products_provider.dart';
import 'package:provider_state_management/screens/cart_screen.dart';
import 'package:provider_state_management/screens/product_detail_screen.dart';
import './screens/product_overview_screen.dart';
import './providers/cart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (ctx) => ProductProviders(),
          ),
          ChangeNotifierProvider(
              create: (ctx) => Cart(),
          )
        ],

        child: MaterialApp(
          title: 'Shopping App',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange
          ),
          home: ProductOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => const CartScreen(),
          },
        ),
      );
  }
}
