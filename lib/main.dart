import 'package:flutter/material.dart';
import 'login.dart'; // Impor halaman login
import 'signup.dart'; // Impor halaman sign up

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        '/login': (context) => LoginPage(), // Menambahkan rute untuk halaman login
        '/signup': (context) => SignUpPage(), // Menambahkan rute untuk halaman sign up
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5D13E7),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          right: 10,
          left: 10,
          bottom: 30,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Mata",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OtomanopeeOne',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Fish!",
                      style: TextStyle(
                        color: Colors.yellow,
                        fontFamily: 'OtomanopeeOne',
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 0),
              Image.asset(
                'assets/images/leleellips.png',
                height: 450,
              ),
              SizedBox(height: 0),
              Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OtomanopeeOne',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol Sign Up ditekan
                      Navigator.pushNamed(context, '/signup'); // Navigasi ke halaman sign up
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login'); // Navigasi ke halaman login
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
