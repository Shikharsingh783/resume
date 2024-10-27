import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;

Future<Uint8List> generateResumePdf() async {
  final pdf = pw.Document();

  // Load the Roboto font as bytes
  final ByteData fontData =
      await rootBundle.load('assets/fonts/PTSerif-Regular.ttf');
  final Uint8List fontBytes = fontData.buffer.asUint8List();
  final pw.Font font = pw.Font.ttf(ByteData.sublistView(fontBytes));

  // Load the bold font as bytes
  final ByteData fontBoldData =
      await rootBundle.load('assets/fonts/PTSerif-Bold.ttf');
  final Uint8List fontBoldBytes = fontBoldData.buffer.asUint8List();
  final pw.Font fontBold = pw.Font.ttf(ByteData.sublistView(fontBoldBytes));

  final bulletTextStyle = pw.TextStyle(
    fontSize: 12,
    font: font,
  );

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) => pw.Padding(
        padding: const pw.EdgeInsets.all(0),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Center(
              child: pw.Text(
                'Shikhar Kumar Singh',
                style: pw.TextStyle(
                  fontSize: 30,
                  font: fontBold,
                ),
              ),
            ),
            pw.SizedBox(height: 0),
            pw.Center(
              child: pw.Text(
                '+91 6386412496 | shikhars369@gmail.com\nlinkedin.com/in/shikhar-kumar-singh | github.com/Shikharsingh783',
                textAlign: pw.TextAlign.center,
                style: pw.TextStyle(font: font),
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Text('Education',
                style: pw.TextStyle(
                  fontSize: 18,
                  font: fontBold,
                )),
            pw.Divider(),
            pw.Text(
              'VIT Bhopal University, Bhopal, Madhya Pradesh',
              style: pw.TextStyle(font: font),
            ),
            pw.Text(
              'Bachelor of Technology in Computer Science and Engineering, CGPA: 8.01',
              style: pw.TextStyle(font: font),
            ),
            pw.Text(
              'September 2021 Onwards',
              style: pw.TextStyle(font: font),
            ),
            pw.SizedBox(height: 10),
            pw.Text('Technical Skills',
                style: pw.TextStyle(fontSize: 18, font: fontBold)),
            pw.Divider(),
            // Languages text
            pw.RichText(
              text: pw.TextSpan(
                children: [
                  pw.TextSpan(
                    text: 'Languages: ',
                    style: pw.TextStyle(
                        font: fontBold,
                        fontWeight: pw.FontWeight.bold), // Bold text
                  ),
                  pw.TextSpan(
                    text: 'Dart, C/C++, SQL, JavaScript, HTML/CSS',
                    style: bulletTextStyle, // Regular text
                  ),
                ],
              ),
            ),

            // Frameworks text
            pw.RichText(
              text: pw.TextSpan(
                children: [
                  pw.TextSpan(
                    text: 'Frameworks: ',
                    style: pw.TextStyle(
                        font: fontBold,
                        fontWeight: pw.FontWeight.bold), // Bold text
                  ),
                  pw.TextSpan(
                    text: 'Flutter, React, Material-UI, FastAPI',
                    style: bulletTextStyle, // Regular text
                  ),
                ],
              ),
            ),

            // Developer Tools text
            pw.RichText(
              text: pw.TextSpan(
                children: [
                  pw.TextSpan(
                    text: 'Developer Tools: ',
                    style: pw.TextStyle(
                        font: fontBold,
                        fontWeight: pw.FontWeight.bold), // Bold text
                  ),
                  pw.TextSpan(
                    text:
                        'Git, Xcode, Android Studio, AWS, Visual Studio, PyCharm, IntelliJ',
                    style: bulletTextStyle, // Regular text
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Text('Projects',
                style: pw.TextStyle(fontSize: 18, font: fontBold)),
            pw.Divider(),
            pw.Bullet(
                text:
                    'HIKE | Dart, Flutter, C++, Provider, Firebase (August 2024 onwards)',
                style: bulletTextStyle),
            pw.Padding(
              padding: const pw.EdgeInsets.only(left: 20),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Developed a chat application supporting real-time communication for 200+ users.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Led the development of user authentication and profile management.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Optimized app performance, improving response times.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Deployed at https://github.com/Shikharsingh783/hike',
                    style: pw.TextStyle(font: font),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Bullet(
                text:
                    'TWITTER | Dart, Flutter, C++, Provider, Firebase (July 2024)',
                style: bulletTextStyle),
            pw.Padding(
              padding: const pw.EdgeInsets.only(left: 20),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Created a Twitter clone with tweeting, commenting, reporting, blocking features.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Followed clean architecture for data management and modularity.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Deployed at https://github.com/Shikharsingh783/twitter-C',
                    style: pw.TextStyle(font: font),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Bullet(
                text: 'COVID TRACKER | Dart, Flutter, RestAPI (June 2024)',
                style: bulletTextStyle),
            pw.Padding(
              padding: pw.EdgeInsets.only(left: 20),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Created a real-time COVID-19 tracker with global statistics.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Integrated country-wise data display.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Deployed at https://github.com/Shikharsingh783/covid-tracker',
                    style: pw.TextStyle(font: font),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Bullet(
                text:
                    'TRIBLE | Dart, Flutter, C++, Provider, Firebase (March 2024 – May 2024)',
                style: bulletTextStyle),
            pw.Padding(
              padding: pw.EdgeInsets.only(left: 20),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Developed an online marketplace connecting businesses with skill professionals.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Deployed at https://github.com/Shikharsingh783/Trible',
                    style: pw.TextStyle(font: font),
                  ),
                ],
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Text('Extracurricular',
                style: pw.TextStyle(fontSize: 18, font: fontBold)),

            pw.Divider(),
            pw.Text(
              'Google Crowdsource Community (Volunteer, VIT Bhopal)',
              style: pw.TextStyle(font: font),
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(left: 20),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Orchestrated 4 high-profile events featuring guests from Google India.',
                    style: pw.TextStyle(font: font),
                  ),
                  pw.Text(
                    'Managed a budget of Rs. 75,000 for the last event.',
                    style: pw.TextStyle(font: font),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );

  return pdf.save();
}
