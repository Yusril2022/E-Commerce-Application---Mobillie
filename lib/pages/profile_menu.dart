import 'package:flutter/material.dart';
import 'keranjang_page.dart';
import 'rekening_page.dart';
import 'bantuan_page.dart';
import 'favorite_page.dart';
import 'package:mobillie/login.dart';
import 'akun.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileBody();
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // Background image
          Image.network(
            'https://mobilhondajogjakarta.com/wp-content/uploads/2022/11/wrv.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 250, // Adjust height as needed
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Spacer to push content below the background image
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/D5603AQGbqHvP_od53w/profile-displayphoto-shrink_800_800/0/1714476769967?e=2147483647&v=beta&t=HlvGTnPNa8xrVLqVUewxjSc1e5E4e2YjLRW2Z_tYSWc'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Yusril Mubaroq',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255,
                            255), // Text color on the background image
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'yusril.mubaroq@gmail.com',
                      style: TextStyle(
                        fontSize: 13,
                        color:
                            Colors.white, // Text color on the background image
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Kota Tasikmalaya, Jawa Barat',
                      style: TextStyle(
                        fontSize: 13,
                        color:
                            Colors.white, // Text color on the background image
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 255, 255, 255), // Background color for the container
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.account_circle,
                          color: Color.fromARGB(255, 5, 9, 212)),
                      title: Text('Akun'),
                      onTap: () {
                        // Implementasi navigasi ke halaman pesanan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountManagementPage(),
                          ),
                        );
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.shopping_cart,
                          color: Color.fromARGB(255, 235, 116, 4)),
                      title: Text('Keranjang'),
                      onTap: () {
                        // Implementasi navigasi ke halaman pesanan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoppingCartPage(),
                          ),
                        );
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.favorite,
                          color: Color.fromARGB(255, 231, 6, 6)),
                      title: Text('Favorite'),
                      onTap: () {
                        // Implementasi navigasi ke halaman favorit
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoritePage(),
                          ),
                        );
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.payment,
                          color: Color.fromARGB(255, 5, 154, 235)),
                      title: Text('Rekening Bank'),
                      onTap: () {
                        // Implementasi navigasi ke halaman Rekening
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BankAccountPage(),
                          ),
                        );
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.help,
                          color: Color.fromARGB(255, 46, 3, 236)),
                      title: Text('Bantuan'),
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HelpCenterPage(),
                          ),
                        );
                        // Implementasi navigasi ke halaman alamat pengiriman
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.settings,
                          color: Color.fromARGB(255, 68, 68, 68)),
                      title: Text('Pengaturan'),
                      onTap: () {
                        // Implementasi navigasi ke halaman pengaturan
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.exit_to_app,
                          color: Color.fromARGB(255, 231, 6, 6)),
                      title: Text('Keluar'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Konfirmasi"),
                              content: Text("Anda yakin ingin keluar?"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Tidak"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Implementasi logout
                                    Navigator.of(context).pop();
                                    // Navigasi ke halaman login
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()),
                                    );
                                  },
                                  child: Text("Ya"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
