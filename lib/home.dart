import 'package:agrow_mobile/calendar_plantio.dart';
import 'package:agrow_mobile/doacao.dart';
import 'package:agrow_mobile/faleconosco.dart';
import 'package:agrow_mobile/meu_plantio.dart';
import 'package:agrow_mobile/treinamento.dart';
import 'package:flutter/material.dart';

import 'novo_equipamento.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
          Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(211, 255, 115, 1),
                  Color.fromRGBO(211, 255, 115, 1),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/temperaturas.png",
                    ),
                    Image.asset(
                      "assets/images/rainfall.png",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/umidade.png",
                    ),
                    Image.asset(
                      "assets/images/wind.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Wrap(
                spacing: 20,
                runSpacing: 20.0,
                children: <Widget>[
                  SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.green,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Treinamento();
                                }))
                              },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/treinamento.png",
                                  width: 64.0,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                      color: Colors.white,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Doacao();
                                }))
                              },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/heart.png",
                                  width: 64.0,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.green[300],
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return PlantioH();
                                }))
                              },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/agriculture.png",
                                  width: 64.0,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.green[300],
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Calendario();
                                }))
                              },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/calendar.png",
                                  width: 60.0,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.green[300],
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return FaleConosco();
                                }))
                              },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/consulting.png",
                                  width: 64.0,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.green[300],
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextButton(
                          onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Equipamento();
                                }))
                              },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/agricultura-inteligente.png",
                                  width: 60.0,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
