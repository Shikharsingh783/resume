// main.dart
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume/resume_pdf.dart'; // For PdfPreview widget

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume Viewer'),
      ),
      body: PdfPreview(
        build: (format) async => await generateResumePdf(),
        allowPrinting: true,
        allowSharing: true,
      ),
    );
  }
}
