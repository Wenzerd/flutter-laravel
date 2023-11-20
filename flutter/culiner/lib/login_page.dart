import 'package:flutter/material.dart';
import 'home_page.dart';
import 'main.dart'; // Ganti dengan nama file yang sesuai dengan halaman awal Anda
import 'register_page.dart'; // Sesuaikan dengan nama file halaman pendaftaran Anda

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Color(0xFF92A584).withOpacity(0.8), // Ubah opacity sesuai kebutuhan
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFAF1E4).withOpacity(0.9), // Ubah opacity sesuai kebutuhan
      appBar: AppBar(
  toolbarHeight: 80.0, // Mengatur tinggi app bar menjadi 80.0
  backgroundColor: Color(0xFF92A584).withOpacity(0.8), // Ubah opacity sesuai kebutuhan
  iconTheme: IconThemeData(
    color: Colors.black..withOpacity(0.2),
  ),
  leading: IconButton(
    icon: Icon(Icons.arrow_back_ios, size: 30), // Menggunakan ikon back_ios
    onPressed: () {
      // Tambahkan navigasi kembali ke halaman awal di sini
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LandingPage()),
      );
    },
  ),
  leadingWidth: 30, // Mengatur lebar area ikon kembali
  title: Text(
    'Masuk',
    style: TextStyle(
      color: Colors.black..withOpacity(0.2),
      fontSize: 19.0,
    ),
  ),
  titleSpacing: 5, // Mengatur jarak antara ikon dan teks ke 0 (tidak ada jarak)
),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Tengahkan vertikal
          children: <Widget>[
            // Gambar logo bulat
            Container(
              width: 225,
              height: 225,
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
              width: 240.0, // Sesuaikan lebar container pengisian username
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xFFCEDEBD), // Warna latar belakang hijau dengan opacity
              ),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  border: InputBorder.none, // Menghilangkan garis bawah
                  contentPadding: EdgeInsets.only(left:10.0, top: 4.0), // Geser teks ke atas dengan contentPadding
                ),
              ),
            ),
            SizedBox(height: 18.0),
            Container(
              width: 240.0, // Sesuaikan lebar container pengisian password
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xFFCEDEBD), // Warna latar belakang hijau dengan opacity
              ),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  border: InputBorder.none, // Menghilangkan garis bawah
                  contentPadding: EdgeInsets.only(left:10.0, top: 4.0), // Geser teks ke atas dengan contentPadding
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Tengahkan elemen dalam baris
              children: <Widget>[
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    // Tambahkan logika untuk "Ingat Password" di sini
                  },
                ),
                Text(
                  'Ingat Password',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],  
            ),
            SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan logika saat tombol masuk ditekan
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
               child: Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.black, // Mengatur warna teks "Daftar" menjadi hitam
                  ),
               ),
                style: ElevatedButton.styleFrom(
                  primary:
                      Color(0xFF9EB384), // Warna latar belakang hijau dengan opacity // Mengatur warna tombol (hijau muda)
                ),
              ),
            ),
                 
            SizedBox(height: 10),
            TextButton (
              onPressed:() {
                //Tambahkan logika untuk tindakan saat tombol"Daftar sekarang" ditekan disini
                Navigator.of(context) .pushReplacement(
                  MaterialPageRoute(builder: (context) =>RegisterPage()),
                );
              } ,
              child: RichText(
    text: TextSpan(
      style: DefaultTextStyle.of(context).style,
      children: <TextSpan>[
        TextSpan(
          text: 'Belum punya akun? ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
        TextSpan(
          text: 'Daftar sekarang',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 10, 
          ),
        ),
      ],
               ),
             ),
            )
          ],
      ),
    )
    );
  }
}