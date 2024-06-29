import 'package:flutter/material.dart';


class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<String> favoriteProducts = [
    "Honda HR-V",
    "Honda CR-V",
    "Honda BR-V",
  ];

  void removeProduct(int index) {
    setState(() {
      favoriteProducts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
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
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 231, 6, 6),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  favoriteProducts[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: const Color.fromARGB(255, 231, 6, 6),
                  ),
                  onPressed: () => removeProduct(index),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
