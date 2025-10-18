import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Page"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[900],
      body: const Center(
        child: Text(
          "This is the Add Page",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
