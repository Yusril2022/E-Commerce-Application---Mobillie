import 'package:flutter/material.dart';
import 'dealer.dart';
import 'dealer_detail_page.dart';

class DaerahDetailPage extends StatelessWidget {
  final String daerah;
  final List<Dealer> dealers;

  DaerahDetailPage(this.daerah)
      : dealers = getDealersForDaerah(daerah),
        super();

  static List<Dealer> getDealersForDaerah(String daerah) {
    switch (daerah) {
      case 'Tasikmalaya':
        return [
          Dealer(
            nama: 'Honda Star Motor Tasikmalaya',
            email: 'hondastar1@gmail.com',
            phone: '08xxxxxxxxxx',
            website: 'https://hondastartasik.co.id',
            lokasi: 'Jl. Ahmad Yani No. 23, Kota Tasikmalaya',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Daya Motor Tasikmalaya',
            email: 'hondadaya1@gmail.com',
            phone: '08xxxxxxxxx',
            website: 'https://hondadayatasik.co.id',
            lokasi: 'Jl. Ahmad Yani No. 23, Kota Tasikmalaya',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Star Motor Tasikmalaya',
            email: 'hondastar1@gmail.com',
            phone: '08xxxxxxxxxx',
            website: 'https://hondastartasik.co.id',
            lokasi: 'Jl. Ahmad Yani No. 23, Kota Tasikmalaya',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Daya Motor Tasikmalaya',
            email: 'hondadaya1@gmail.com',
            phone: '08xxxxxxxxx',
            website: 'https://hondadayatasik.co.id',
            lokasi: 'Jl. Ahmad Yani No. 23, Kota Tasikmalaya',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Star Motor Tasikmalaya',
            email: 'hondastar1@gmail.com',
            phone: '08xxxxxxxxxx',
            website: 'https://hondastartasik.co.id',
            lokasi: 'Jl. Ahmad Yani No. 23, Kota Tasikmalaya',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Daya Motor Tasikmalaya',
            email: 'hondadaya1@gmail.com',
            phone: '08xxxxxxxxx',
            website: 'https://hondadayatasik.co.id',
            lokasi: 'Jl. Ahmad Yani No. 23, Kota Tasikmalaya',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
        ];
      case 'Bandung':
        return [
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
        ];
        case 'Karawang':
      
        return [
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
        ];
        case 'Yogyakarta':
      
        return [
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
        ];
        case 'Jakarta':
      
        return [
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Soekarno Hatta',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
          Dealer(
            nama: 'Honda Sukamaju Jaya',
            email: 'hondayani@gmail.com',
            phone: '(022) 7217271',
            website: 'https://hondayani.com/',
            lokasi: 'JL A. yani No.352, Kacapiring, Kec. Batununggal, Kota Bandung, Jawa Barat 40271',
            gambarLokal: 'https://hondabandung-raya.com/wp-content/uploads/2022/04/dealer-Honda-Ahmad-Yani-bandung.jpg.webp',
          ),
        ];
        default:
        return[];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // No shadow
        title: Image.network(
          'https://i.ibb.co.com/m6f7xfy/IMG-20240330-WA0000-removebg-preview.png',
          height: 50,
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
          ),
          itemCount: dealers.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DealerDetailPage(dealers[index]),
                  ),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15.0),
                        ),
                        child: Image.network(
                          dealers[index].gambarLokal,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dealers[index].nama,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            dealers[index].lokasi,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
