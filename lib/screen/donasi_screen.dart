import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonasiScreen extends StatelessWidget {
  const DonasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 6, 38, 119),
                Color.fromRGBO(255, 255, 255, 1),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
                30), // Padding yang seragam untuk setiap sisi
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'assets/images/aja.png',
                      width: 60,
                      height: 70,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'DONASI',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Color.fromARGB(255, 234, 237, 241),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  DonationCard(),
                  SizedBox(height: 20),
                  DonationCard(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Galeri'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Donasi'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class DonationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 8.0), // Adjust padding if necessary
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                'assets/images/photo1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sedekah Jum\'at Rutin',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'sedekah untuk yang sedang mengalami kemalangan dan kesusahan',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 11, 83),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Donasi',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Color.fromARGB(255, 214, 217, 221),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
