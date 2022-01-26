import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Biodata',
      home: Detailspage(),
    );
  }
}
 
class Detailspage extends StatelessWidget {
  const Detailspage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:SafeArea(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2, 
              margin: EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/images/foto1.jpeg",
                  fit: BoxFit.cover,
                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text("MY BIODATA",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
            ),
         Container(   margin: EdgeInsets.only(top: 16.0),
              child: Text("Nama Ku Jepri Pasaribu, dan saya dilahirkan di Desa Siantar CA kecamatan Sosorgadong Pada Tanggal 22 Agustus 1998 . Saya Memiliki golongan Darah A dan sekarang saya sedang berumur 23 tahun. sekian pengenalan saya, akhir kata saya ucapkan Terimaksih",
              
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
              )),
         )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar( items: [
        BottomNavigationBarItem(
          label: "Umum",
          icon: Icon(Icons.cake),
        ),
        BottomNavigationBarItem(label: "Khusus", icon: Icon(Icons.people)
        ),
        BottomNavigationBarItem(
          label: "Pendidikan",
          icon: Icon(Icons.school),
        )
      ]),
      
    );
  }
}