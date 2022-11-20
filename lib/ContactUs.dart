import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 165, 249, 158),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 125, 51),
        title: Text(
          "ContactUs",
        ),
      ),
      body: Column(
        children: [
          Column(
            
          ),
        ]
      ),
    );
  }
}