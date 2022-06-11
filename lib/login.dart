import 'dart:convert';
import 'package:agrow_mobile/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Login> {
  late String errormsg;
  late bool error, showprogress;
  late String email, senha;

  var _username = TextEditingController();
  var _password = TextEditingController();

  startLogin() async {
    String apiurl =
        "http://localhost/GS_AnaCarolinaAugusto_BackEnd/api_php/api/usuarios/login.php";

    var response = await http
        .post(Uri.parse(apiurl), body: {'email': email, 'senha': senha});

    if (response.statusCode == 200) {
      var jsondata = json.decode(response.body);
      if (jsondata["error"]) {
        setState(() {
          showprogress = false;
          error = true;
          errormsg = jsondata["message"];
        });
      } else {
        if (jsondata["success"]) {
          setState(() {
            error = false;
            showprogress = false;
          });
        } else {
          showprogress = false;
          error = true;
          errormsg = "Algo deu errado";
        }
      }
    } else {
      setState(() {
        showprogress = false;
        error = true;
        errormsg = "Erro ao conectar no servidor";
      });
    }
  }

  @override
  void initState() {
    email = "";
    senha = "";
    errormsg = "";
    error = false;
    showprogress = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage('assets/images/fundo.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.black, Colors.black],
                ),
              ),
            ),
          ),
          Center(
              child: Form(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'AGROW',
                    style: TextStyle(
                      fontSize: 60.0,
                      letterSpacing: 2.0,
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.all(10),
                    child: error ? errmsg(errormsg) : Container(),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      controller: _username,
                      style: TextStyle(color: Colors.green[300], fontSize: 20),
                      decoration: myInputDecoration(
                        label: "E-mail",
                        icon: Icons.person,
                      ),
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: _password,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      obscureText: true,
                      decoration: myInputDecoration(
                        label: "Senha",
                        icon: Icons.lock,
                      ),
                      onChanged: (value) {
                        senha = value;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          startLogin();
                          _open(context);
                        },
                        child: showprogress
                            ? SizedBox(
                                height: 30,
                                width: 30,
                                child: CircularProgressIndicator(
                                  backgroundColor: Colors.orange[100],
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.green),
                                ),
                              )
                            : Text(
                                "Entrar",
                                style: TextStyle(fontSize: 20),
                              ),
                        colorBrightness: Brightness.dark,
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ]),
          )),
        ],
      ),
    );
  }

  InputDecoration myInputDecoration({required String label, IconData? icon}) {
    return InputDecoration(
      hintText: label,
      hintStyle:
          TextStyle(color: Colors.green[300], fontSize: 20), //hint text style
      prefixIcon: Padding(
          padding: EdgeInsets.only(left: 20, right: 10),
          child: Icon(icon, color: Colors.green)),

      contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),

      fillColor: Colors.white,
      filled: true,
    );
  }

  Widget errmsg(String text) {
    return Container(
      padding: EdgeInsets.all(15.00),
      margin: EdgeInsets.only(bottom: 10.00),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.red,
      ),
      child: Row(children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 6.00),
          child: Icon(Icons.info, color: Colors.white),
        ),
        Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
      ]),
    );
  }

  _open(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return HomePage();
    }));
  }
}
