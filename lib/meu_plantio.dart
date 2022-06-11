import 'package:agrow_mobile/treinamento.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'calendar_plantio.dart';
import 'doacao.dart';
import 'faleconosco.dart';
import 'home.dart';
import 'novo_equipamento.dart';

class PlantioH extends StatefulWidget {
  @override
  MeuPlantio createState() => MeuPlantio();
}

class MeuPlantio extends State<PlantioH> {
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

List<ExpandableController> controllerList = [
  ExpandableController(),
  ExpandableController(),
  ExpandableController()
];

int currentIndex = -1;

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[0],
                theme: const ExpandableThemeData(
                  iconColor: Color.fromRGBO(132, 182, 125, 1),
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 0;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
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
                                  Icons.calendar_today,
                                  color: Colors.white,
                                )),
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "04/06/2022",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Produto:",
                                style: TextStyle(color: Colors.black)),
                            Text("Morango",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 1.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantidade: ",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text("10KG", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Preço: ",
                                style: TextStyle(color: Colors.black)),
                            Text("300,00",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Lucro: ",
                                style: TextStyle(color: Colors.black)),
                            Text("100,00",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Data Plantio: ",
                                style: TextStyle(color: Colors.black)),
                            Text("15/04/2022",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Data Colheita: ",
                                style: TextStyle(color: Colors.black)),
                            Text("04/06/2022",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Validade (dias): ",
                                style: TextStyle(color: Colors.black)),
                            Text("10", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Categoria: ",
                                style: TextStyle(color: Colors.black)),
                            Text("Frutas",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[1],
                theme: const ExpandableThemeData(
                  iconColor: Color.fromRGBO(132, 182, 125, 1),
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 1;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
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
                                  Icons.calendar_today,
                                  color: Colors.white,
                                )),
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Text("15/05/2020",
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Produto:",
                                style: TextStyle(color: Colors.black)),
                            Text("Morango",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 1.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantidade: ",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text("10KG", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Preço: ",
                                style: TextStyle(color: Colors.black)),
                            Text("300,00",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Lucro: ",
                                style: TextStyle(color: Colors.black)),
                            Text("100,00",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Data Plantio: ",
                                style: TextStyle(color: Colors.black)),
                            Text("15/04/2022",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Data Colheita: ",
                                style: TextStyle(color: Colors.black)),
                            Text("04/06/2022",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Validade (dias): ",
                                style: TextStyle(color: Colors.black)),
                            Text("10", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Categoria: ",
                                style: TextStyle(color: Colors.black)),
                            Text("Frutas",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                controller: controllerList[2],
                theme: const ExpandableThemeData(
                  iconColor: Color.fromRGBO(211, 255, 115, 1),
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: InkWell(
                  onTap: () {
                    currentIndex = 2;
                    for (int i = 0; i < controllerList.length; i++) {
                      if (i == currentIndex) {
                        controllerList[i].expanded = true;
                      } else {
                        controllerList[i].expanded = false;
                      }
                    }
                  },
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
                                  Icons.calendar_today,
                                  color: Colors.white,
                                )),
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "14/04/2020",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Produto:",
                                style: TextStyle(color: Colors.black)),
                            Text("Morango",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 1.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantidade: ",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text("10KG", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Preço: ",
                                style: TextStyle(color: Colors.black)),
                            Text("300,00",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Lucro: ",
                                style: TextStyle(color: Colors.black)),
                            Text("100,00",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Data Plantio: ",
                                style: TextStyle(color: Colors.black)),
                            Text("15/04/2022",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Data Colheita: ",
                                style: TextStyle(color: Colors.black)),
                            Text("04/06/2022",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Validade (dias): ",
                                style: TextStyle(color: Colors.black)),
                            Text("10", style: TextStyle(color: Colors.black)),
                          ],
                        ),
                        Divider(
                          color: Color.fromRGBO(132, 182, 125, 1),
                          thickness: 2.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Categoria: ",
                                style: TextStyle(color: Colors.black)),
                            Text("Frutas",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                builder: (_, collapsed, expanded) {
                  return Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
              child: BottomNavigationBar(
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
    ));
  }
}
