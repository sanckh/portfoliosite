// lib/src/views/home/home_page.dart
import 'package:flutter/material.dart';
import 'package:portfolio_website/src/views/contact/contact_page.dart';
import '../../themes/portfolio_theme.dart'; // Ensure this import is correct

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the current theme's text theme
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildHeaderSection(textTheme),
            _buildAboutMeSection(textTheme),
            _buildPortfolioPreviewSection(),
            _buildContactMeSection(context, Theme.of(context).textTheme),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection(TextTheme textTheme) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage(''),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage(''),
          ),
          SizedBox(height: 8.0),
          Text(
            'Your Name',
            style: textTheme.displayLarge, // Adjust this to match your theme's desired style
          ),
          SizedBox(height: 8.0),
          Text(
            'Your Title - Developer/Designer',
            style: textTheme.displayMedium, // Adjust this to match your theme's desired style
          ),
        ],
      ),
    );
  }

  Widget _buildAboutMeSection(TextTheme textTheme) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About Me',
            style: textTheme.titleLarge, // Adjust this to match your theme's desired style
          ),
          SizedBox(height: 16.0),
          Text(
            'Briefly introduce yourself here. You can talk about your motivations, your experience, and what you’re passionate about.',
            style: textTheme.bodyMedium, // Adjust this to match your theme's desired style
          ),
        ],
      ),
    );
  }

  Widget _buildPortfolioPreviewSection() {
    return Container(
      height: 200.0,
      child: Center(
        child: Text('Portfolio Preview Placeholder'),
      ),
    );
  }

  Widget _buildContactMeSection(BuildContext context, TextTheme textTheme) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Contact Me',
            style: textTheme.titleLarge,
          ),
          SizedBox(height: 8.0), // Add some spacing between the title and the button
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust padding
              foregroundColor: Colors.white, // Text color
              backgroundColor: Theme.of(context).primaryColor, // Button background color
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactPage()),
              );
            },
            child: Text(
              'Get In Touch',
              style: textTheme.labelLarge, // Adjust this to match your theme's desired style for buttons
            ),
          ),
        ],
      ),
    );
  }
}