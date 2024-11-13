import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AboutPage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0F7FA), // Background biru muda
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: const Color(0xFF0288D1), // Warna biru laut
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Foto Profil dengan Border Gradient
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFF0288D1), Color(0xFF01579B)],
                    ),
                  ),
                  padding: const EdgeInsets.all(4.0),
                  child: const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/foto.png'),
                  ),
                ),
                const SizedBox(height: 20),
                // Nama Lengkap
                Text(
                  'Baringga Aurico De Erwada',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                const SizedBox(height: 10),
                // NRP
                Text(
                  'NRP: 5026221133',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue.shade700,
                  ),
                ),
                const SizedBox(height: 20),
                // Funfact Card
                Card(
                  color: const Color(0xFF0288D1),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.lightbulb_outline,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Fun fact',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Saya gatau lagi ngapain?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Tombol Aksi
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF01579B),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: const Icon(Icons.handshake, color: Colors.white),
                  label: const Text(
                    'Hello!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Terima kasih sudah berbelanja silahkan datang kembali!',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Color(0xFF0288D1),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
