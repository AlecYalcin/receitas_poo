import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: Scaffold(
      appBar: AppBar(title: const Text("AppBar Test")),
      body: const Center(
        child: Text("Hello, world!")
      ),
      bottomNavigationBar: const Text("Botão 1"),
    ));
  runApp(app);
}