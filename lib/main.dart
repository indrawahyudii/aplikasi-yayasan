import "package:flutter/material.dart";
import "package:yayasan/screen/dasboard_screen.dart";
import "package:yayasan/screen/donasi_screen.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yayasan Aisyah Berbagi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 61, 36, 105)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}
