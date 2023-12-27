import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _message = '';

  void _sendEmail() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'your-email@example.com',
        query: encodeQueryParameters(<String, String>{
          'subject': 'Contact from $_name',
          'body': _message,
        }),
      );

      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        // Show some error message if you want
      }
    }
  }

  String encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
      ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) => value!.isEmpty ? 'Please enter your name' : null,
                  onSaved: (value) => _name = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) => !value!.contains('@') ? 'Please enter a valid email' : null,
                  onSaved: (value) => _email = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Message'),
                  validator: (value) => value!.isEmpty ? 'Please enter a message' : null,
                  onSaved: (value) => _message = value!,
                  maxLines: 5,
                ),
                ElevatedButton(
                  onPressed: _sendEmail,
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ),
      );
  }
}