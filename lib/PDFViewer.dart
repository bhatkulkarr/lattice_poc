import 'dart:io';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class PDFViewer extends StatefulWidget {
  String url;

  PDFViewer(this.url);

  @override
  _PDFViewerState createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child:  SfPdfViewer.network(
              widget.url),
        ),
      ),
    );
  }
}
