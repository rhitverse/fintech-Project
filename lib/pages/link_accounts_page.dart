import 'package:flutter/material.dart';

class LinkAccountsPage extends StatelessWidget {
  const LinkAccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101010),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101010),
        title: const Text(
          "Link Accounts",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text(
          "This is the Link Accounts Page",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
