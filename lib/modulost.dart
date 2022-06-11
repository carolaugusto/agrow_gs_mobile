import 'package:agrow_mobile/treinamento.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'calendar_plantio.dart';
import 'faleconosco.dart';
import 'home.dart';
import 'meu_plantio.dart';
import 'novo_equipamento.dart';

class Modulo extends StatefulWidget {
  @override
  MeuModulo createState() => MeuModulo();
}

class MeuModulo extends State<Modulo> {
  int _currentIndex = 0;

  final tabs = [
    HomePage(),
    Treinamento(),
    PlantioH(),
    Equipamento(),
    Calendario(),
    Consultoria(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card1(),
            Card2(),
            Card3(),
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          child: Container(
            color: Color.fromRGBO(211, 255, 115, 1),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.book,
                          color: Colors.white,
                        )),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Estudo",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          child: Container(
            color: Color.fromRGBO(211, 255, 115, 1),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.question_answer,
                          color: Colors.white,
                        )),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Questionário",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          child: Container(
            color: Color.fromRGBO(211, 255, 115, 1),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.games,
                          color: Colors.white,
                        )),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        "Prática",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
