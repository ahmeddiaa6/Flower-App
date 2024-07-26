import 'package:app/pages/checkout.dart';
import 'package:app/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                  // ignore: sort_child_properties_last
                  child: Text(
                    "${carttt.selectedProducts.length}",
                    style: const TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Checkout(),
                      ),
                    );
              },
              icon: const Icon(Icons.add_shopping_cart,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${carttt.price}",
            style: const TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ],
    );
  }
}
