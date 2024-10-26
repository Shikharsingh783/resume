import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List> generateResumePdf() async {
  final pdf = pw.Document();

  // Load the Roboto font as bytes
  final ByteData fontData =
      await rootBundle.load('assets/fonts/Roboto-Regular.ttf');
  final Uint8List fontBytes = fontData.buffer.asUint8List();

  // Convert Uint8List to ByteData
  final ByteData fontByteData = ByteData.sublistView(fontBytes);
  final pw.Font font = pw.Font.ttf(fontByteData); // Use the loaded font

  // Load the bold font as bytes
  final ByteData fontBoldData =
      await rootBundle.load('assets/fonts/Roboto-Bold.ttf');
  final Uint8List fontBoldBytes = fontBoldData.buffer.asUint8List();

  // Convert Uint8List to ByteData for bold font
  final ByteData fontBoldByteData = ByteData.sublistView(fontBoldBytes);
  final pw.Font fontBold = pw.Font.ttf(fontBoldByteData);

  final bulletTextStyle = pw.TextStyle(
    fontSize: 12,
    font: font, // Use the loaded font here
  );

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Padding(
        padding: pw.EdgeInsets.all(20),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              'Shikhar Kumar Singh',
              style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text('+91 6386412496 | shikhars369@gmail.com'),
            pw.Text(
                'linkedin.com/in/shikhar-kumar-singh | github.com/Shikharsingh783'),
            pw.SizedBox(height: 20),
            pw.Text('Education',
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
            pw.Text('VIT Bhopal University, Bhopal, Madhya Pradesh'),
            pw.Text(
                'Bachelor of Technology in Computer Science and Engineering, CGPA: 8.01'),
            pw.Text('September 2021 Onwards'),
            pw.SizedBox(height: 20),
            pw.Text('Technical Skills',
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
            pw.Bullet(
                text: 'Languages: Dart, C/C++, SQL, JavaScript, HTML/CSS',
                style: bulletTextStyle),
            pw.Bullet(
                text: 'Frameworks: Flutter, React, Material-UI, FastAPI',
                style: bulletTextStyle),
            pw.Bullet(
                text:
                    'Developer Tools: Git, Xcode, Android Studio, AWS, Visual Studio, PyCharm, IntelliJ',
                style: bulletTextStyle),
            pw.SizedBox(height: 20),
            pw.Text('Projects',
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
            pw.Bullet(
                text:
                    'HIKE | Dart, Flutter, C++, Provider, Firebase (August 2024 onwards)',
                style: bulletTextStyle),
            pw.Text(
                '• Developed a chat application supporting real-time communication for 200+ users.'),
            pw.Text(
                '• Led the development of user authentication and profile management.'),
            pw.Text('• Optimized app performance, improving response times.'),
            pw.Text('• Deployed at https://github.com/Shikharsingh783/hike'),
            pw.SizedBox(height: 10),
            pw.Bullet(
                text:
                    'TWITTER | Dart, Flutter, C++, Provider, Firebase (July 2024)',
                style: bulletTextStyle),
            pw.Text(
                '• Created a Twitter clone with twitting, liking, commenting, reporting, blocking features.'),
            pw.Text(
                '• Followed clean architecture for data management and modularity.'),
            pw.Text(
                '• Deployed at https://github.com/Shikharsingh783/twitter-C'),
            pw.SizedBox(height: 10),
            pw.Bullet(
                text: 'COVID TRACKER | Dart, Flutter, RestAPI (June 2024)',
                style: bulletTextStyle),
            pw.Text(
                '• Created a real-time COVID-19 tracker with global statistics.'),
            pw.Text('• Integrated country-wise data display.'),
            pw.Text(
                '• Deployed at https://github.com/Shikharsingh783/covid tracker'),
            pw.SizedBox(height: 10),
            pw.Bullet(
                text:
                    'TRIBLE | Dart, Flutter, C++, Provider, Firebase (March 2024 – May 2024)',
                style: bulletTextStyle),
            pw.Text(
                '• Developed an online marketplace connecting businesses with skilled professionals.'),
            pw.Text('• Deployed at https://github.com/Shikharsingh783/Trible'),
            pw.SizedBox(height: 20),
            pw.Text('Extracurricular',
                style:
                    pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
            pw.Text('Google Crowdsource Community (Volunteer, VIT Bhopal)'),
            pw.Text(
                '• Orchestrated 4 high-profile events featuring guests from Google India.'),
            pw.Text('• Managed a budget of Rs. 75,000 for the last event.'),
          ],
        ),
      ),
    ),
  );

  return pdf.save();
}
