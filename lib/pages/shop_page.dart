import 'package:flutter/material.dart';


class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.search, color: Colors.grey),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari Mobil Impianmu',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Slider for images with product information
            Container(
              height: 130,
              child: PageView(
                children: [
                  _buildProductCard(
                    context: context,
                    imageUrl: 'https://asset.honda-indonesia.com/variants/images/UF0yd0wj1rpKmzDzu7IJ91uwnXKnxHAm9ikZ7BPk.png',
                    title: 'HR-V',
                    price: '300jt - 400jt',
                    description: 'Rasakan sensasi berkendara yang bertenaga dengan mesin 1.5L VTEC Turbo bertenaga 177 PS (Khusus tipe RS Turbo). ',
                    features: ['Glass roof', 'Honda Sensing', 'Auto Pilot'], // Fitur sementara
                  ),
                ],
              ),
            ),
            SizedBox(height:20),
            Container(
              height: 130,
              child: PageView(
                children: [
                  _buildProductCard(
                    context: context,
                    imageUrl: 'https://res.cloudinary.com/mufautoshow/image/upload/f_auto,f_auto/w_1200/v1608086368/moas/news/1599257741_harga-honda-brio-2020-daftar-harga-review-dan-spesifikasi.jpg',
                    title: 'BRIO',
                    price: '200jt - 300jt',
                    description: 'Kini dilengkapi dengan Full LED Headlamp with LED DRL untuk tampilan lebih sporty dan One Push Ignition System untuk kemudahan berkendara. ',
                    features: ['Glass roof', 'Honda Sensing', 'Auto Mobile'], // Fitur sementara
                  ),
                  
  
                ],
              ),
            ),
            SizedBox(height:20),
            Container(
              height: 130,
              child: PageView(
                children: [
                  _buildProductCard(
                    context: context,
                    imageUrl: 'https://asset.honda-indonesia.com/colors/bsqvmAwLSNxqUdIWyulSgr16KU1qHZ3l97VCMjWc.png',
                    title: 'CR-V',
                    price: '400jt - 500jt',
                    description: 'Dilengkapi fitur keselamatan terdepan, termasuk Honda SENSING yang kini hadir lebih lengkap untuk memberikan rasa aman di perjalanan Anda. ',
                    features: ['Sun roof', 'Honda Sensing', 'Auto Mobile'], // Fitur sementara
                  ),
                ],
              ),
            ),
            SizedBox(height:20),
            Container(
              height: 130,
              child: PageView(
                children: [
                  _buildProductCard(
                    context: context,
                    imageUrl: 'https://edgecast-img.yahoo.net/mysterio/api/AAB59238DF0CA2493F8ADB5A738A5A37B75CC71DA2844208124CA9B10DBC8558/autoblog/resizefill_w660_h372;quality_80;format_webp;cc_31536000;/https://s.aolcdn.com/commerce/autodata/images/USD20HOC021B021001.jpg',
                    title: 'CIVIC',
                    price: '600jt - 700jt',
                    description: 'Mengakses mobil jadi lebih mudah dengan fitur Honda Smart Key Card, dan rasakan sensasi berkendara yang sporty dengan mesin 1.5L I-VTEC Turbo bertenaga 178PS. ',
                    features: ['Sun roof', 'Honda Sensing', 'Auto Mobile'], // Fitur sementara
                  ),
                 
                ],
              ),
            ),
            SizedBox(height:20),
            Container(
              height: 130,
              child: PageView(
                children: [
                  _buildProductCard(
                    context: context,
                    imageUrl: 'https://asset.honda-indonesia.com/variants/images/spLU2dFm8ufk2EpkxvZehqPjmrfQH62mIS6zHJ64.png',
                    title: 'BR-V',
                    price: '600jt - 700jt',
                    description: 'Dilengkapi dengan Remote Engine Start, Walk-Away Auto Lock dan Honda LaneWatch untuk kepraktisan Anda. ',
                    features: ['Sun roof', 'Honda Sensing', 'Auto Mobile'], // Fitur sementara
                  ),
                ],
              ),
            ),
            SizedBox(height:20),
            Container(
              
              height: 130,
              child: PageView(
                children: [
                  _buildProductCard(
                    context: context,
                    imageUrl: 'https://asset.honda-indonesia.com/variants/images/dIV9Z6B4mTYh6efYJUtHQwCkQopGIIiLuEU7WWjM.jpg',
                    title: 'City Hacthback',
                    price: '300jt - 400jt',
                    description: 'Maksimalkan area kabin dengan konfigurasi yang cepat dan mudah untuk memenuhi semua kebutuhan Anda. ',
                    features: ['Sun roof', 'Honda Sensing', 'Auto Mobile'], // Fitur sementara
                  ),
                ],
              ),
            ),
            // Nambah jenis mobil
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required BuildContext context,
    required String imageUrl,
    required String title,
    required String price,
    required String description,
    required List<String> features, // Nambah deskripsi lain seputar mobil
  }) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(
                imageUrls: [
                  imageUrl,
                  'https://asset.honda-indonesia.com/variants/images/L8IeJCV9gMZAGrP64YrtvjcncBtMLXKq2iQ2AesF.png',
                  'https://asset.honda-indonesia.com/variants/images/10aaixnuEJ9OS49RsKeSan2hllyfYwgWgdQWxT5Y.png', 
                ],
                title: title,
                price: price,
                description: description,
                features: features,
              ),
            ),
          );
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Image.network(
            imageUrl,
            width: 100,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text(
                'Price: $price',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatefulWidget {
  final List<String> imageUrls;
  final String title;
  final String price;
  final String description;
  final List<String> features;

  const ProductDetailPage({
    required this.imageUrls,
    required this.title,
    required this.price,
    required this.description,
    required this.features,
  });

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _currentIndex = 0;
  String _selectedType = ''; // Menyimpan tipe mobil yang dipilih

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Image.network(
          'https://i.ibb.co.com/m6f7xfy/IMG-20240330-WA0000-removebg-preview.png',
          height: 50,
          width: 220,
          fit: BoxFit.cover,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! > 0) {
                  setState(() {
                    _currentIndex = (_currentIndex - 1).clamp(0, widget.imageUrls.length - 1);
                  });
                } else if (details.primaryVelocity! < 0) {
                  setState(() {
                    _currentIndex = (_currentIndex + 1).clamp(0, widget.imageUrls.length - 1);
                  });
                }
              },
              child: Container(
                height: 300,
                child: PageView.builder(
                  itemCount: widget.imageUrls.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.network(
                      widget.imageUrls[index],
                      // width: 400,
                      // height: 50,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Harga : ${widget.price}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 235, 6, 25)),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Fitur :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.features
                        .map(
                          (feature) => Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Row(
                              children: [
                                Icon(Icons.check, size: 16, color: Color.fromARGB(255, 231, 6, 6)),
                                SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    feature,
                                    style: TextStyle(fontSize: 16),
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tampilkan modal pilihan tipe mobil
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ListTile(
                                  title: Text('RS'),
                                  onTap: () {
                                    setState(() {
                                      _selectedType = 'RS';
                                    });
                                    Navigator.pop(context);
                                    _showNotification(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Standar'),
                                  onTap: () {
                                    setState(() {
                                      _selectedType = 'Standar';
                                    });
                                    Navigator.pop(context);
                                    _showNotification(context);
                                  },
                                ),
                                ListTile(
                                  title: Text('Prestige'),
                                  onTap: () {
                                    setState(() {
                                      _selectedType = 'Prestige';
                                    });
                                    Navigator.pop(context);
                                    _showNotification(context);
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 231, 6, 6),
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal:30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Beli Sekarang',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

 void _showNotification(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Color.fromARGB(255, 231, 6, 6), // Warna latar belakang notifikasi
      elevation: 6.0, // Efek naik bayangan
      behavior: SnackBarBehavior.floating, // Gaya notifikasi mengambang
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ), // Bentuk notifikasi
      ),
      content: Container(
        height: 60.0, // Tinggi konten notifikasi
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Mobil tipe $_selectedType telah ditambahkan ke keranjang.',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16.0, 
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.close, color: Colors.white), // Ikon tombol tutup
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar(); // Tutup notifikasi
              },
            ),
          ],
        ),
      ),
      duration: Duration(seconds: 3), // Durasi tampil notifikasi
    ),
  );
}

}
