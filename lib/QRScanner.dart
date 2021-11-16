import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lattice_scanner_app/PDFViewer.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';


class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? barcode;
  bool showInfo = false;
  String infoText = "";

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


  @override
  Future<void> reassemble() async {
    if(Platform.isAndroid){
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildQrView(context),

          Visibility(
            visible: showInfo,
            child: Positioned(bottom: 110,child: Container(
              padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white24
                ),
                child: Text(infoText,style: TextStyle(
                    color: Colors.white
                ),))
            ),
          )
        ],
      ),
    );
  }


  Widget buildQrView(BuildContext context) => QRView(
    key: qrKey,
    onQRViewCreated: onQRViewCreated,
    overlay: QrScannerOverlayShape(
      borderColor: Colors.amberAccent,
      borderWidth: 10,
      borderRadius: 10,
      borderLength: 30,
      cutOutSize: MediaQuery.of(context).size.width * 0.8,
    ),
  );

  void onQRViewCreated(QRViewController controller){
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((barcode) {
      this.barcode = barcode;
      if(barcode!=null){
        setState(() {
          showInfo = true;
        });
        getQrResult();
      }else{
        setState(() {
          showInfo = true;
        });
        setState(() {
          infoText = "No Data Found";
        });
      }
    });

  }

  void getQrResult(){
    print("This is Scanned Result ${barcode!.code}");
    setState(() {
      infoText = barcode!.code;
    });
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) {
        return PDFViewer(barcode!.code);
      }),
    );
  //  _launchInBrowser(barcode!.code);
  }



}
