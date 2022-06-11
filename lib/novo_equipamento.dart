import 'package:agrow_mobile/calendar_plantio.dart';
import 'package:agrow_mobile/home.dart';
import 'package:agrow_mobile/meu_plantio.dart';
import 'package:agrow_mobile/treinamento.dart';
import 'package:flutter/material.dart';

import 'doacao.dart';
import 'faleconosco.dart';

class Equipamento extends StatefulWidget {
  const Equipamento({Key? key}) : super(key: key);

  @override
  NovoEquipamento createState() => NovoEquipamento();
}

class NovoEquipamento extends State<Equipamento> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
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
                    'Novo Equipamento',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 22.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Digite o nome do aparelho',
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons.new_releases,
                            color: Colors.green,
                          )),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Digite o tipo de aparelho',
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons.merge_type,
                            color: Colors.green,
                          )),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Digite o nº de série',
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons.confirmation_number,
                            color: Colors.green,
                          )),
                      obscureText: true,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Digite a senha do aparelho aparelho',
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.green,
                          )),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      ;
                    },
                    shape: StadiumBorder(),
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(fontSize: 22.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 80.0),
                    elevation: 0.0,
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
