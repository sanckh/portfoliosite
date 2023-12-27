// lib/src/views/about/about_page.dart
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(''),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About Me',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 8.0),
            Text(
              'I am a passionate Flutter developer with a knack for creating beautiful and functional user interfaces. With a strong background in mobile development and a love for learning new technologies, I strive to bring fresh ideas to the table and deliver exceptional results.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 16.0),
            Text(
              'Skills',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 8.0),
            Text(
              '• Flutter & Dart\n• Firebase\n• RESTful APIs\n• State Management (Provider, Bloc)\n• Version Control (Git)',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 16.0),
            // Add more sections as needed, such as experience, education, etc.
          ],
        ),
      ),
    );
  }
}