import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              // Mengatur ukuran gambar dengan menggunakan Stack
              Container(
                width: double.infinity,
                height: 250,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/gambar1.PNG",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: IconButton(
                        icon: Icon(Icons.article_outlined, color: Colors.white),
                        onPressed: () {
                          // Aksi saat ikon ditekan
                        },
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: IconButton(
                        icon: Icon(Icons.account_box_rounded,
                            color: Colors.white),
                        onPressed: () {
                          // Aksi saat ikon ditekan
                        },
                      ),
                    ),
                    child: Text(
                        'Donasi',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Color.fromARGB(255, 214, 217, 221),
                        ),
                      ),
                  ],
                ),
              ),
              // Tambahkan widget lain di sini jika diperlukan
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return AttendanceScreen(); // Pastikan fungsi ini ada dan diimpor dengan benar
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize:
                    const Size(double.infinity, 410), // Ubah tinggi menjadi 400
                backgroundColor: Color.fromARGB(255, 228, 232, 233),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'YAYASAN\n',
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 0, 57, 133),
                      ),
                      children: const [
                        TextSpan(
                          text: 'AISYAH BERBAGI',
                          style: TextStyle(
                            fontSize: 35,
                            color: Color.fromARGB(255, 0, 57, 133),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height: 10), // Jarak yang diatur di sini (misalnya 10)
                  Text(
                    'Yayasan ini mengawali kegiatannya dengan program Sedekah Jumat Rp10.000 yang hasilnya dialokasikan ke sejumlah pondok pesantren di Bengkalis, membantu fakir miskin, dhuafa, anak yatim dan yang membutuhkan lainnya. Saat ini Yayasan memiliki hampir 400 donatur, berasal dari dalam daerah, luar daerah hingga luar negeri.',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 0, 57, 133),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 115),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Foto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Keuangan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Profil',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Tangani perubahan tab
        },
      ),
    );
  }
}

// Definisikan AttendanceScreen jika belum ada
class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Attendance Screen'),
          // Tambahkan widget lain sesuai kebutuhan
        ],
      ),
    );
  }
}
