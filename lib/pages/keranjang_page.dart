import 'package:flutter/material.dart';


class ShoppingCartPage extends StatelessWidget {
  final List<Product> cartItems = [
    Product('Honda HR-V Turbo', 'https://asset.honda-indonesia.com/variants/images/UF0yd0wj1rpKmzDzu7IJ91uwnXKnxHAm9ikZ7BPk.png', 312),
    Product('Honda CR-V Prestige', 'https://asset.honda-indonesia.com/colors/bsqvmAwLSNxqUdIWyulSgr16KU1qHZ3l97VCMjWc.png', 350),
    Product('Honda Civic Rs', 'https://asset.honda-indonesia.com/variants/images/dIV9Z6B4mTYh6efYJUtHQwCkQopGIIiLuEU7WWjM.jpg', 500),
  ];

  @override
  Widget build(BuildContext context) {
    double totalPrice = cartItems.fold(0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network(
          'https://i.ibb.co.com/m6f7xfy/IMG-20240330-WA0000-removebg-preview.png',
          height: 50,
          width: 220,
          fit: BoxFit.cover,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return CartItemWidget(cartItems[index]);
              },
            ),
          ),
          CheckoutSection(totalPrice: totalPrice),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String imageUrl;
  final int price;

  Product(this.name, this.imageUrl, this.price);
}

class CartItemWidget extends StatelessWidget {
  final Product product;

  CartItemWidget(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              product.imageUrl,
              width: 80,
              height: 80,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '\Rp ${product.price} \jt',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete, color: const Color.fromARGB(255, 231, 6, 6)),
              onPressed: () {
                // Tambahkan logika untuk menghapus item dari keranjang
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutSection extends StatelessWidget {
  final double totalPrice;

  CheckoutSection({required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '\Rp  ${totalPrice.toStringAsFixed(2)} \jt',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk melanjutkan ke halaman checkout
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                primary: const Color.fromARGB(255, 231, 6, 6),
                textStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              child: Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}
