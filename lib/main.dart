import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'src/themes/portfolio_theme.dart';
import 'src/views/profile/profile_page.dart';
// import 'src/views/portfolio_page.dart';
import 'src/views/about/about_page.dart';
import 'src/views/contact/contact_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: PortfolioTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
        actions: <Widget>[
          _navItem(context, 'Profile', ProfilePage()),
          _navItem(context, 'Contact', ContactPage()),
          _navItem(context, 'About Me', AboutPage()),
          //add more navitems here
        ]
      ),
      body: Center(
        child: Text('Welcome to My Portfolio Website!'),
      ),
    );
  }

  Widget _navItem(BuildContext context, String title, Widget page){
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(title),
    );
  }
}