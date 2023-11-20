import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main.dart'; // Ganti dengan nama file yang sesuai dengan halaman awal Anda

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
      theme: ThemeData(
        primaryColor: Color(0xFF92A584), // Mengatur warna utama (hijau muda)
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF1E4).withOpacity(0.9), // Ubah opacity sesuai kebutuhan
      appBar: AppBar(
        toolbarHeight: 80.0, // Mengatur tinggi app bar menjadi 90.0
        backgroundColor: Color(0xFF92A584).withOpacity(0.8), // Ubah opacity sesuai kebutuhan
        elevation: 0,
        automaticallyImplyLeading: false, // Menghapus tombol kembali secara otomatis
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios, size: 30), // Menggunakan ikon back_ios
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()), // Ganti dengan halaman awal yang sesuai
                  (route) => false, // Hapus semua rute sebelumnya dari tumpukan
                );
              },
            ),
            Text(
              'DAFTAR',
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ],
        ),
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8)), // Mengatur warna ikon secara global di AppBar
        titleSpacing: 3, // Mengatur jarak antara ikon dan teks ke 0 (tidak ada jarak)
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: 225,
                  height: 225,
                  margin: EdgeInsets.only(top: 10.0), // Membuat gambar agak ke bawah
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 18.0),
                Container(
                  width: 240.0,
                  height: 41.0, // Sesuaikan tinggi colom pengisian
                  margin: EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFFCEDEBD), // Warna latar belakang putih
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left:10.0, bottom: 6.0), // Geser teks ke atas dengan contentPadding
                    ),
                  ),
                ),
                Container(
                  width: 240.0,
                  height: 41.0, // Sesuaikan tinggi colom pengisian
                  margin: EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFFCEDEBD), // Warna latar belakang putih
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left:10.0, bottom: 6.0), // Geser teks ke atas dengan contentPadding
                    ),
                  ),
                ),
                Container(
                  width: 240.0,
                  height: 41.0, // Sesuaikan tinggi colom pengisian
                  margin: EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFFCEDEBD), // Warna latar belakang putih
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left:10.0, bottom: 6.0), // Geser teks ke atas dengan contentPadding
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context) .pushReplacement(
                    MaterialPageRoute(builder: (context) =>LoginPage()),
                    );
                    // Implementasikan logika pendaftaran di sini
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9EB384), // Menghilangkan warna hijau pada tombol
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
