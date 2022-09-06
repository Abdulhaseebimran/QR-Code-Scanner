import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QrCreate extends StatefulWidget {
  const QrCreate({Key? key}) : super(key: key);

  @override
  State<QrCreate> createState() => _QrCreateState();
}

class _QrCreateState extends State<QrCreate> {
  TextEditingController dataControl = TextEditingController();
  String? data;
   var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 58, 105),
        title: Text("QR Code Generator",
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              data == null
              ? Container(
                  child: Text(
                    "Enter Your link to generate QR CODE",
                    style: GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                )
              : BarcodeWidget(
                  barcode: Barcode.qrCode(),
                  data: data!,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 15,),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: dataControl,
                          decoration: InputDecoration(
                          hintText: "Enter Your Link",
                          border: outlineInputBorder,
                          focusedBorder: outlineInputBorder,
                           errorBorder: outlineInputBorder,
                          filled: true,
                          fillColor: Colors.grey[50],
                       ),
                        ), 
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            data  = dataControl.text;
                            setState(() {}
                            );
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                         child: Text("ENTER",
                         style: GoogleFonts.raleway(
                          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white
                         ),
                         )),
                      )
                      ],
                    ),
                  ),
                )
          ],
        )),
      ),
    );
  }
}