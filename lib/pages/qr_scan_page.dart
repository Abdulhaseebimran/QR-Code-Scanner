import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';

class QrScan extends StatefulWidget {
  const QrScan({Key? key}) : super(key: key);

  @override
  State<QrScan> createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
  @override
  Widget build(BuildContext context) {
     String data = 'Unknown';

     return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 58, 105),
        title: Text("QR Code Scanner",
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
              onPressed: () {
                scanQR();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red),
              child: Text("Start Scanning", style: GoogleFonts.raleway(
                fontSize: 20, fontWeight: FontWeight.bold, 
              )),
            ),
          ],
        )),
      ),
    );
  }
   Future<void> scanQR() async {
    try {
      final qrcode = await FlutterBarcodeScanner.scanBarcode(
          '#33C1FF', 'Cancel', true, ScanMode.QR);

      if (!mounted) return;
      setState(() {
        var data = qrcode;
      });
    } on PlatformException {
      var data = 'Failed to Scan Qr code';
    }
  }
}


