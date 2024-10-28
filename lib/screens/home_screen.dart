// main.dart
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume/resume_pdf.dart'; // For PdfPreview widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
      ),
      body: PdfPreview(
        build: (format) async => await generateResumePdf(),
        allowPrinting: true,
        allowSharing: true,
        canChangePageFormat: true,
        canChangeOrientation: true,
      ),
    );
  }
}
