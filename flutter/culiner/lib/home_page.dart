import 'package:flutter/material.dart';
void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFFAF1E4),
          elevation: 1.0, // Tambahkan bayangan app bar
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0, // Mengatur tinggi app bar menjadi 90.0
        backgroundColor: Colors.white,
        elevation: 0, // Hilangkan bayangan app bar
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.black26, // Warna garis bawah
            height: 1.0,
          ),
        ),
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: ClipOval(
                child: Image.asset(
                  'images/logo.png', // Ganti dengan path gambar logo Anda
                  width: 50.0, // Ukuran logo lebih besar
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Culinary Rec',
              style: TextStyle(
                fontSize: 24.0, // Ukuran teks app bar lebih besar
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Kolom pencarian di atas teks "Kategori"
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.lightGreen.withOpacity(0.2),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.black),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari menu masakan...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start, // Ubah alignment menjadi start
              mainAxisSize: MainAxisSize.min, // Tidak mengisi ruang secara horizontal
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk kategori "Cuaca" di sini
                  },
                  child: Text('Cuaca'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9EB384), // Ganti warna latar belakang
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk kategori "Negara" di sini
                  },
                  child: Text('Negara'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9EB384), // Ganti warna latar belakang
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk kategori "Mood" di sini
                  },
                  child: Text('Mood'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9EB384), // Ganti warna latar belakang
                  ),
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start, // Ubah alignment menjadi start
              mainAxisSize: MainAxisSize.min, // Tidak mengisi ruang secara horizontal
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk kategori "Vegetarian" di sini
                  },
                  child: Text('Vegetarian'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9EB384), // Ganti warna latar belakang
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk kategori "Bahan" di sini
                  },
                  child: Text('Bahan'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9EB384), // Ganti warna latar belakang
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Populer',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildMenuCard(
              'images/masakan.jpeg', // Ganti dengan gambar menu populer
              'ayam rendang', // Ganti dengan judul sesuai dengan menu masakan
            ),
            _buildMenuCard(
              'images/masakan.jpeg', // Ganti dengan gambar menu populer lainnya
              'Ayam bakar taliwang', // Ganti dengan judul sesuai dengan menu masakan
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Color(0xFF92A584).withOpacity(0.8), // Ubah opacity sesuai kebutuhan
  selectedItemColor: Colors.black, // Mengubah warna ikon yang dipilih menjadi hitam
  unselectedItemColor: Colors.black, // Mengubah warna ikon yang tidak dipilih menjadi hitam
  showSelectedLabels: true, // Menampilkan label pada item yang dipilih
  showUnselectedLabels: true, // Menampilkan label pada item yang tidak dipilih
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, size: 40.0),
      label: 'Home', // Tambahkan teks label di sini
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add, size: 40.0),
      label: 'Tambah Menu', // Tambahkan teks label di sini
      
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person, size: 40.0),
      label: 'Akun', // Tambahkan teks label di sini
    ),
  ],
),

    );
  }

  Widget _buildMenuCard(String imagePath, String title) {
    return Container(
      margin: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.lightGreen.withOpacity(0.4), // Warna latar belakang hijau muda
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath, // Ganti dengan gambar menu populer
            width: 150.0,
            height: 150.0,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 8.0),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.lightGreen.withOpacity(0.1), // Warna latar belakang hijau muda
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Text(
                title, // Ganti dengan judul sesuai dengan menu masakan
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}