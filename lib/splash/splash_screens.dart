import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/pages/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
void initState(){
  super.initState();
  Timer(const Duration(seconds:3), () => Navigator.pushReplacement( context,
        MaterialPageRoute(
          builder: (context) => const HomePage()),
  )
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color:  const Color.fromARGB(255, 0, 58, 105),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ const 
            Icon(
            Icons.qr_code_2_outlined,
            size: 200,
            color: Colors.white,
            ),
            Center(
              child: Text("Qr Code Scanner\n       Generator",
              style: GoogleFonts.raleway(
                fontSize: 30, fontWeight: FontWeight.bold,
                color: Colors.white
              )),
            )
          ],
          
        ),
      ),
    );
  }
}