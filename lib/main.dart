import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: AboutPage(),
    ));

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutPage"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blueAccent, Colors.lightBlueAccent])),
            child: Container(
              width: double.infinity,
              height: 350.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/foto.png'), // Ganti dengan lokasi gambar Anda
                      radius: 50.0,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Baringga Aurico De Erwada",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "NRP: 5026221133", // Ganti dengan NRP Anda
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      color: Colors.white,
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 22.0),
                        child: Text(
                          "Fun Fact: Saya suka belajar teknologi baru!",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Tentang Saya:",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Saya adalah seorang pengembang aplikasi mobile yang sangat antusias. Saya suka belajar teknologi baru dan mengimplementasikannya dalam proyek-proyek saya.",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 300.0,
            child: ElevatedButton(
              onPressed: () {
                // Action button
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15.0),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                "Hubungi Saya",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
