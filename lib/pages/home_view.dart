import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'location_menu.dart';
import 'profile_menu.dart'; 
import 'shop_page.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomePageState();
}

class _HomePageState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      SingleChildScrollView(
        child: Column(
          children: [
            CarInfoCard(
              imageUrl: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg',
              title: 'Dealer legends!',
              description: 'Konon mengatakan dealer honda ini paling laris penjualannya pada tahun 2023 lalu.',
              imageHeight: 200,
              imageWidth: 500,
            ),
            CarInfoCard(
              imageUrl: 'https://mobilhondajogjakarta.com/wp-content/uploads/2022/11/wrv.jpg',
              title: 'Launch mobil baru',
              description: 'Pada tahun 2023 kemaren PT Honda Propect Motor merilis mobil yakni HONDA WR-V.',
              imageHeight: 200,
              imageWidth: 500,
            ),
            CarInfoCard(
              imageUrl: 'https://hondabintang.com/wp-content/uploads/2022/06/dsc03636__1641781166058.jpg',
              title: 'BR-V Ceremony',
              description: 'Apakah kalin tahu honda WR-V ini launch nya pada tahun 2022 lepas',
              imageHeight: 200,
              imageWidth: 500,
            ),
            CarInfoCard(
              imageUrl: 'https://asset.honda-indonesia.com/media-library/cde7b1c2-e693-4886-80de-6c6609cb7c8e/23nWTNPXjsnxZVPwkq6jGif25TBoLtyvYrDkOMz5.jpg',
              title: 'IKB 2022!',
              description: 'Dikutif dari Gridoto.com Honda HR-V ini paling bikin bahagia penggunannya',
              imageHeight: 200,
              imageWidth: 500,
            ),
            CarInfoCard(
              imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/moladin.assets/blog/wp-content/uploads/2022/05/09123555/Ekspor-Honda-BRV.jpeg',
              title: 'Handover!',
              description: 'Pimpinan PT Honda Propect Motor pergantian pimpinan tahun 2017',
              imageHeight: 200,
              imageWidth: 500,
            ),
          ],
        ),
      ),
      DaerahMenu(),
      ShopPage(),
      ProfileMenu(), 
    ];

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
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: Colors.white,
        items: [
          TabItem(icon: Icon(Icons.home, color: Color.fromARGB(255, 231, 6, 6)), title: 'Home'),
          TabItem(icon: Icon(Icons.location_on, color: Color.fromARGB(255, 231, 6, 6)), title: 'Location'),
          TabItem(icon: Icon(Icons.shop, color: Color.fromARGB(255, 231, 6, 6)), title: 'Shop'),
          TabItem(icon: Icon(Icons.person, color: Color.fromARGB(255, 231, 6, 6)), title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}

class CarInfoCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final double imageHeight;
  final double imageWidth;

  CarInfoCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    this.imageHeight = 150,
    this.imageWidth = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.network(
            imageUrl,
            height: imageHeight,
            width: imageWidth,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
