import 'package:flutter/material.dart';


class HelpCenterPage extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBar(),
            SizedBox(height: 20),
            Expanded(child: FAQList()),
            ContactSupportButton(),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Focus(
      child: Builder(
        builder: (context) {
          final hasFocus = Focus.of(context).hasFocus;
          return TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Cari bantuan...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: hasFocus ? Colors.black : Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FAQList extends StatelessWidget {
  final List<FAQ> faqs = [
    FAQ(question: 'Bagaimana cara melakukan pembayaran?', answer: 'Anda bisa melakukan pembayaran melalui transfer bank, e-wallet, atau kartu kredit.'),
    FAQ(question: 'Bagaimana cara melacak pesanan?', answer: 'Anda bisa melacak pesanan melalui menu "Pesanan Saya" di aplikasi.'),
    FAQ(question: 'Bagaimana cara mengembalikan barang?', answer: 'Untuk mengembalikan unit, Anda bisa mengikuti langkah-langkah yang ada di menu "Pengembalian unit".'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: faqs.length,
      itemBuilder: (context, index) {
        return FAQCard(faq: faqs[index]);
      },
    );
  }
}

class FAQ extends StatefulWidget {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.question,
        style: TextStyle(color: _isExpanded ? Colors.black : Colors.black),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.answer),
        ),
      ],
      onExpansionChanged: (bool expanding) => setState(() => _isExpanded = expanding),
    );
  }
}

class FAQCard extends StatelessWidget {
  final FAQ faq;

  FAQCard({required this.faq});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: faq,
    );
  }
}

class ContactSupportButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton.icon(
        onPressed: () {
          // Aksi untuk menghubungi layanan pelanggan
        },
        icon: Icon(Icons.support_agent),
        label: Text('Hubungi Layanan Pelanggan'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 231, 6, 6),
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
