import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
            'This is a simple profile card app built with Flutter. It demonstrates how to create a user interface with a profile form and an about page.'),
      ),
    );
  }
}
