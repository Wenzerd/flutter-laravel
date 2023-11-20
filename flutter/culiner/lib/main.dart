import 'package:flutter/material.dart';
import 'register_page.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Saya',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF92A584),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
  width: 300, // Lebar yang lebih besar untuk menghasilkan bentuk elips
  height: 200, // Tinggi yang lebih rendah untuk menghasilkan bentuk elips
  child: ClipOval(
    child: Image.asset(
      'images/masakan.jpeg',
      fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40), // Ubah tinggi spasi dengan gambar
            // Teks "Jelajahi Menu Masakan" dengan warna putih
            Text(
              'Jelajahi',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Menu Masakan',
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40), // Tinggi spasi yang lebih besar
            // Tombol "Masuk" dengan teks hitam
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text(
                'Masuk',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 5), // Tinggi spasi yang lebih kecil antara tombol Masuk dan Daftar
            // Tombol "Daftar" dengan teks hitam
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              child: Text(
                'Daftar',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
