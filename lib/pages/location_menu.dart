import 'package:flutter/material.dart';
import 'daerah_detail_page.dart';

class DaerahMenu extends StatelessWidget {
  final List<String> daerah = [
    'Tasikmalaya',
    'Bandung',
    'Karawang',
    'Yogyakarta',
    'Jakarta'
  ];

  final List<Color> cardColors = [
    Color.fromARGB(255, 231, 6, 6),
    // Colors.green,
    // Colors.orange,
    // Colors.purple,
    // Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: daerah.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DaerahDetailPage(daerah[index]),
                ),
              );
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      cardColors[index % cardColors.length].withOpacity(0.8),
                      cardColors[(index + 1) % cardColors.length].withOpacity(0.8)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Text(
                    daerah[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
