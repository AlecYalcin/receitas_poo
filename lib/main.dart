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
        body: ListView(
          children: const [
           newBody(),
          ]
        ),
        bottomNavigationBar: NewBottomNavigationBar(icons: lista_icone),
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
  List<BottomIcon> icons;
  NewBottomNavigationBar({super.key, this.icons = const[]});

  BottomNavigationBarItem processIcon(BottomIcon icon) {
    return BottomNavigationBarItem(
      label: icon.nome,
      icon: icon.icone
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
    return BodyText(objects: dataObjects);
  }
}

class BodyText extends StatelessWidget {
  List objects;
  BodyText({super.key, this.objects = const[]});

  @override
  Widget build(BuildContext context) {
    var columnNames = ["Nome", "Estilo", "IBU"];
    var propertyNames = ["name","style","ibu"];

    return DataTable(
      columns: columnNames.map(
        (name) => DataColumn(
          label: Expanded(
            child: Text(name, style: const TextStyle(fontStyle: FontStyle.italic))),
        )
      ).toList(),
      rows: objects.map(
        (obj) => DataRow(
          cells: propertyNames.map(
            (property) => DataCell(Text(obj[property]))
          ).toList()
        )
      ).toList()
    );
  }
}

class Cerveja {
  String nome;
  String estilo;
  String ibu;

  Cerveja(this.nome, this.estilo, this.ibu);
}

class BottomIcon {
  String nome;
  Icon icone;

  BottomIcon(this.nome, this.icone);
}

var dataObjects = [
    {
      "name": "La Fin Du Monde",
      "style": "Bock",
      "ibu": "65"
    },
    {
      "name": "Sapporo Premiume",
      "style": "Sour Ale",
      "ibu": "54"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    },
    {
      "name": "Duvel", 
      "style": "Pilsner", 
      "ibu": "82"
    }
];

List<BottomIcon> lista_icone = [
  BottomIcon("Café",const Icon(Icons.coffee_outlined)),
  BottomIcon("Cerveja",const Icon(Icons.local_drink_outlined)),
];