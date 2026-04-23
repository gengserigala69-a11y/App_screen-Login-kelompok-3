import 'package:flutter/material.dart';

class Error404Screen extends StatelessWidget {
  const Error404Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ErrorInfo(
          title: "404",
          description: "Halaman tidak ditemukan",
          press: () => Navigator.pushNamed(context, '/signin'),
        ),
      ),
    );
  }
}

class ErrorInfo extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback press;

  const ErrorInfo({
    super.key,
    required this.title,
    required this.description,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: const TextStyle(fontSize: 32)),
        const SizedBox(height: 10),
        Text(description),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: press,
          child: const Text("Back"),
        ),
      ],
    );
  }
}