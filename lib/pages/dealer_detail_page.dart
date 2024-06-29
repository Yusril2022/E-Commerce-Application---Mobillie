import 'package:flutter/material.dart';
import 'dealer.dart';

class DealerDetailPage extends StatelessWidget {
  final Dealer dealer;

  DealerDetailPage(this.dealer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.network(
          'https://i.ibb.co.com/m6f7xfy/IMG-20240330-WA0000-removebg-preview.png',
          height: 50,
          width: 220,
          fit: BoxFit.cover,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(dealer.gambarLokal),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              dealer.nama,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Lokasi: ${dealer.lokasi}',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            Text(
              'Deskripsi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel mauris id nisi eleifend dapibus. Nullam euismod sem eu sapien sodales, sed placerat orci congue. Vivamus eget libero sed quam fermentum elementum. Phasellus ac eros id lacus bibendum iaculis et nec leo. Sed in ex ligula. Fusce sit amet nulla in metus feugiat luctus. Integer eget ex non est fringilla iaculis.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            Text(
              'Kontak:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Email: ${dealer.email}\nPhone: ${dealer.phone}\nWebsite: ${dealer.website}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            Text(
              'Jam Operasional:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Senin - Jumat: 08:00 - 17:00\nSabtu: 08:00 - 12:00\nMinggu: Tutup',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, // Tidak ada aksi yang ditetapkan
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 231, 6, 6), // Warna latar belakang
              ),
              child: Text(
                "Hubungi",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.white, // Warna teks
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
