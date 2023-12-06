import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(160, 170, 96, 1.0),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: Text(
                  'FUTRENT',
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(253, 210, 130, 1.0)),
                ),
              ),
              Text(
                'A FORMA MAIS FÁCIL DE PRATICAR\nSEU ESPORTE FAVORITO',
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30.0, 120.0, 30.0, 30.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email ou nome de usuário',
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(253, 210, 130, 1.0)),
                      labelText: 'USUÁRIO',
                      labelStyle: TextStyle(
                          fontSize: 17.0,
                          color: Color.fromRGBO(253, 210, 130, 1.0),
                          fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(253, 210, 130, 1.0))),
                      focusedBorder: OutlineInputBorder(
                          gapPadding: 10.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              width: 2.5,
                              color: Color.fromRGBO(253, 210, 130, 1.0))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(253, 210, 130, 1.0)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      focusColor: Colors.red),
                ),
              )
            ],
          ),
        ));
  }
}
