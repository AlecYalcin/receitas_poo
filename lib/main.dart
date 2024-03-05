import 'package:flutter/material.dart';

void main() {
  MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: Scaffold(
      appBar: AppBar(title: const Center(
        child: Text("Cerveijaria do Turco")
      )),
      body: const Column(
        children: [
          ExpansionTile(
            title: Text("Belvedere"),
            subtitle: Text("Vodka"),
            children: [
              Center(
                child: Column(
                  children: [
                    Text("Teor Alcólico: 40%"),
                    Text("País de Origem: Polônia"),
                  ],
                ) 
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Sierra Nevada"),
            subtitle: Text("Cerveja"),
            children: [
              Center(
                child: Column(
                  children: [
                    Text("Teor Alcólico: 4%~8%"),
                    Text("País de Origem: Estados Unidos"),
                  ],
                ) 
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Leblon"),
            subtitle: Text("Cachaça"),
            children: [
              Center(
                child: Column(
                  children: [
                    Text("Teor Alcólico: 30%"),
                    Text("País de Origem: Brasil"),
                  ],
                ) 
              ),
            ],
          ),
        ],
      )
    ));
  runApp(app);
}