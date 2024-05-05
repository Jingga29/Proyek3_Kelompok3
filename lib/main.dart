import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF5D13E7),

        // body
        body: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            right: 10,
            left: 10,
            bottom: 30,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Posisikan di atas
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1), // Buat ruang kosong di atas
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Mata",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OtomanopeeOne',
                          fontSize: 40, // Sesuaikan ukuran font sesuai kebutuhan Anda
                          fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
                        ),
                      ),
                      TextSpan(
                        text: "Fish!",
                        style: TextStyle(
                          color: Colors.yellow, // Atur warna kuning untuk "Fish"
                          fontFamily: 'OtomanopeeOne',
                          fontSize: 45, // Sesuaikan ukuran font sesuai kebutuhan Anda
                          fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0), // Menambahkan jarak antara teks dan gambar
                Image.asset(
                  'assets/images/leleellips.png', // Ganti dengan path ke gambar Anda
                  height: 450, // Sesuaikan tinggi gambar sesuai kebutuhan Anda
                ),

                SizedBox(height: 0), // Menambahkan jarak antara gambar dan teks
                Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OtomanopeeOne',
                    fontSize: 20, // Sesuaikan ukuran font sesuai kebutuhan Anda
                    fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
                  ),
                ),

                SizedBox(height: 10), // Menambahkan jarak antara teks dan tombol
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, // Menempatkan tombol di antara teks secara horizontal
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol Sign Up ditekan
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Warna latar belakang putih
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol Log In ditekan
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold, // Membuat teks menjadi tebal
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // Warna latar belakang kuning
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
