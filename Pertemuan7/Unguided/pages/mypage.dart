import 'package:flutter/material.dart';
import 'package:unguided6/model/product.dart';
import 'package:unguided6/pages/detail.dart';

final List<Product> products = [
  Product(
    name: 'Laptop',
    description:
        'Laptop dengan spesifikasi tinggi untuk kebutuhan kerja dan gaming.',
    price: 15000000,
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Product(
    name: 'Smartphone',
    description: 'Smartphone dengan kamera terbaik dan performa tinggi.',
    price: 7000000,
    imageUrl: 'https://via.placeholder.com/150',
  ),
  Product(
    name: 'Headphone',
    description: 'Headphone dengan kualitas suara jernih dan bass mendalam.',
    price: 1200000,
    imageUrl: 'https://via.placeholder.com/150',
  ),
];

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.network(product.imageUrl),
              title: Text(product.name),
              subtitle: Text('Rp ${product.price.toStringAsFixed(0)}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
