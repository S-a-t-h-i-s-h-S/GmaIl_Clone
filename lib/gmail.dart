import 'package:flutter/material.dart';

class gmail extends StatefulWidget {
  const gmail({super.key});

  @override
  State<gmail> createState() => _gmailState();
}

class _gmailState extends State<gmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 189, 69, 32),
        title: Text('Primary'),
        actions: [Icon(Icons.search)],
      ),
    );
  }
}
