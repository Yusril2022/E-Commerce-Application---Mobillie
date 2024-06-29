import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'login.dart';

class IntroductionPage extends StatelessWidget {
  
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return IntroductionScreen(
      
      globalBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      pages: [
        PageViewModel(
          title: "Selamat datang di aplikasi MoBillie",
          body: "Silakan melakukan login terlebih dahulu agar bisa mengakses semua fitur.",
          image: Center(
            child: Container(
              width: 300,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://i.ibb.co.com/5Bk7HKb/Mob-removebg-preview.png"), // Ganti dengan path gambar yang diinginkan
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          decoration: PageDecoration(
            titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
            bodyTextStyle: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
      ],
      done: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 231, 6, 6), Color.fromARGB(255, 231, 6, 6)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Optional: Atur padding
        child: Text(
          "Lanjutkan",
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.white, // Warna teks
            fontSize: 15,
          ),
        ),
      ),
      showNextButton: true,
      next: Icon(Icons.arrow_forward, color: Colors.grey),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
      nextFlex: 0,
    );
  }
}
