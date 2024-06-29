import 'package:flutter/material.dart';

class BankAccountPage extends StatelessWidget {
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
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Color.fromARGB(255, 231, 6, 6)),
            onPressed: () {
              // Tambah rekening baru
            },
          ),
        ],
      ),
      body: Column(
        children: [
          BalanceCard(),
          TransactionList(),
        ],
      ),
    );
  }
}

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Container(
        height:180,
        width: 300,
        decoration: BoxDecoration(
          
          image: DecorationImage(
            image: NetworkImage("https://i.ibb.co.com/zVCwpdf/Mobpay-page-0001.jpg"),
            fit: BoxFit.cover,
            
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Rp 190.000.000',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(amount: '+ Rp 50.000.000', date: '12 Mei 2024', description: 'Top Up Saldo'),
    Transaction(amount: '- Rp 243.000.000', date: '11 Mei 2024', description: 'Pembayaran Unit HR-V'),
    Transaction(amount: '- Rp 600.000.000', date: '10 Mei 2024', description: 'Pembayaran Unit Civic Rs'),
    Transaction(amount: '- Rp 14.000.000', date: '07 Mei 2024', description:  'Pembayaran DP Unit'),
    Transaction(amount: '+ Rp 243.000.000', date: '21 Juli 2023', description: 'Top Up Saldo'),
    Transaction(amount: '- Rp 600.000.000', date: '09 Mei 2023', description: 'Pembayaran Unit Brio Rs'),
    Transaction(amount: '- Rp 149.000.000', date: '07 April 2022', description:  'Pelunasan Unit'),
    Transaction(amount: '+ Rp 250.000.000', date: '21 Juli 2023', description: 'Top Up Saldo'),
    Transaction(amount: '+ Rp 100.000.000', date: '09 Mei 2023', description: 'Top Up Saldo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return TransactionCard(transaction: transactions[index]);
        },
      ),
    );
  }
}

class Transaction extends StatelessWidget {
  final String amount;
  final String date;
  final String description;

  Transaction({required this.amount, required this.date, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        title: Text(description),
        subtitle: Text(date),
        trailing: Text(amount, style: TextStyle(color: Colors.redAccent)),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  TransactionCard({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        title: Text(transaction.description),
        subtitle: Text(transaction.date),
        trailing: Text(
          transaction.amount,
          style: TextStyle(
            color: transaction.amount.contains('-') ? Colors.red : Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
