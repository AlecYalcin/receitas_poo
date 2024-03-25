// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  MyApp app = const MyApp(); 
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: NewAppBar(),
        body: const newBody(),
        bottomNavigationBar: NewBottomNavigationBar(icons: const [
          Icon(Icons.coffee_outlined),
          Icon(Icons.local_drink_outlined),
        ]),
      ),
    );
  }
}

class NewAppBar extends AppBar {
  NewAppBar({super.key}):super(
    title: const Center(child: Text("Café & Cerveja de Fabrício")),
    actions: [
      PopupMenuButton(
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(
            value: 1,
            child: Text("Roxo"),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text("Azul"),
          ),
          const PopupMenuItem(
            value: 3,
            child: Text("Laranja"),
          ),
        ],
      ),
    ]
  );
}

class NewBottomNavigationBar extends StatelessWidget {
  List<Icon> icons;
  NewBottomNavigationBar({super.key, this.icons = const[]});

  BottomNavigationBarItem processIcon(Icon icon) {
    return BottomNavigationBarItem(
      label: "Botão",
      icon: icon
    );
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> allIcons = icons.map(processIcon).toList();
    return BottomNavigationBar(items: allIcons);
  } 
}

class newBody extends StatelessWidget {
  const newBody({super.key});

  @override

  Widget build(BuildContext context) {
    return BodyText(objects: lista_cerveja);
  }
}

class BodyText extends StatelessWidget {
  List<Cerveja> objects;
  BodyText({super.key, this.objects = const[]});

  @override
  Widget build(BuildContext context) {
    List<Expanded> allTexts = objects.map((obj) => Expanded(
      child: Center(child: Text("${obj.nome} - ${obj.estilo} - ${obj.ibu}")),
    )).toList();
    return Column(children: allTexts);
  }
}

class Cerveja {
  String nome;
  String estilo;
  String ibu;

  Cerveja(this.nome, this.estilo, this.ibu);
}

List<Cerveja> lista_cerveja = [
  Cerveja("La Fin Du Monde","Bock","65"),
  Cerveja("Sapporo Premiume","Sour Ale","54"),
  Cerveja("Duvel","Pilsner","82"),
  Cerveja("Duvel","Pilsner","82"),
  Cerveja("Duvel","Pilsner","82"),
];