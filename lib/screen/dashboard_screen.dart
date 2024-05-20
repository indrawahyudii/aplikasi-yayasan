import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/gambar1.PNG'), // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                              height: 40), // Add some space for the buttons
                          Text(
                            'YAYASAN',
                            style: GoogleFonts.manrope(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 211, 28, 28),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'AISYAH BERBAGI',
                            style: GoogleFonts.manrope(
                              fontSize: 34,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromARGB(255, 224, 15, 15),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Yayasan ini mengawali kegiatannya dengan program Sedekah Jumat Rp10.000 yang hasilnya dialokasikan ke sejumlah pondok pesantren di Bengkalis, membantu fakir miskin, dhuafa, anak yatim dan yang membutuhkan lainnya. Saat ini Yayasan memiliki hampir 400 donatur, berasal dari dalam daerah, luar daerah hingga luar negeri.',
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 211, 16, 16),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 204, 14, 14)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Jumlah Donasi',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 224, 12, 12),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Rp1.500.000',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: const Color.fromARGB(
                                            255, 231, 5, 5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Jumlah Donatur',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '400 Orang',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // BottomNavigationBar di bagian bawah
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Dibawah ini kodingan untuk Icon ("menu dan profil") di bagian paling atas
          Positioned(
            top: 16,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {
                    // Handle the left button press
                  },
                ),
                Text(
                  'Dashboard',
                  style: GoogleFonts.manrope(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Yayasan',
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              icon: Icon(Icons.account_box_rounded),
              color: Colors.white,
              onPressed: () {
                // Handle the right button press
              },
            ),
          ),
        ],
      ),
    );
  }
}
