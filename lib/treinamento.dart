import 'package:agrow_mobile/modulost.dart';
import 'package:agrow_mobile/novo_equipamento.dart';
import 'package:flutter/material.dart';

import 'calendar_plantio.dart';
import 'doacao.dart';
import 'faleconosco.dart';
import 'home.dart';
import 'meu_plantio.dart';

class Treinamento extends StatefulWidget {
  @override
  MeuTreinamento createState() => MeuTreinamento();
}

class MeuTreinamento extends State<Treinamento> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    Treinamento(),
    PlantioH(),
    Equipamento(),
    Calendario(),
    Doacao(),
    Consultoria(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 52.0,
                  ),
                  Image.asset(
                    "assets/images/icon.jpg",
                    width: 52.0,
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Treinamentos',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.green[300],
                  shadowColor: Colors.green,
                  elevation: 20,
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Modulo();
                      }))
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Agricultura Organica",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.green[300],
                  shadowColor: Colors.green,
                  elevation: 20,
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Modulo();
                      }))
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Controle de pragas",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.green[300],
                  shadowColor: Colors.green,
                  elevation: 20,
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Modulo();
                      }))
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Cuidados com o gado",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.green[300],
                  shadowColor: Colors.green,
                  elevation: 20,
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Modulo();
                      }))
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Cuidados com o solo",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.green[300],
                  shadowColor: Colors.green,
                  elevation: 20,
                  child: TextButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Modulo();
                      }))
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Técnicas de plantio",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
                  child: BottomNavigationBar(
                    onTap: onTabTapped,
                    items: [
                      BottomNavigationBarItem(
                        label: 'Home',
                        backgroundColor: Colors.green,
                        icon: Icon(Icons.home),
                      ),
                      BottomNavigationBarItem(
                        label: 'Treinamentos',
                        backgroundColor: Colors.green,
                        icon: Icon(Icons.school_outlined),
                      ),
                      BottomNavigationBarItem(
                          label: 'Plantio',
                          backgroundColor: Colors.green,
                          icon: Icon(Icons.park)),
                      BottomNavigationBarItem(
                        label: 'Equipamentos',
                        backgroundColor: Colors.green,
                        icon: Icon(Icons.aod),
                      ),
                      BottomNavigationBarItem(
                        label: 'Calendario',
                        backgroundColor: Colors.green,
                        icon: Icon(Icons.calendar_today),
                      ),
                      BottomNavigationBarItem(
                        label: 'Doação',
                        backgroundColor: Colors.green,
                        icon: Icon(Icons.favorite),
                      ),
                      BottomNavigationBarItem(
                        label: 'Fale Conosco',
                        backgroundColor: Colors.green,
                        icon: Icon(Icons.person),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
