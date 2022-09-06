import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 58, 105),
        title: Text("HOME PAGE",
        style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
         icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('QrCreate/');
                },
                style:  ElevatedButton.styleFrom(
                primary: Colors.red),
                child: Text("Generate Qr Code",style: GoogleFonts.raleway(
                fontSize: 20, fontWeight: FontWeight.bold,
               ),
              )),
             const SizedBox(height: 10,),
                ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('QrCreate/');
                },
                style:  ElevatedButton.styleFrom(
                primary: Colors.red),
                child: Text("Scan Qr Code",style: GoogleFonts.raleway(
                fontSize: 20, fontWeight: FontWeight.bold,
               ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}