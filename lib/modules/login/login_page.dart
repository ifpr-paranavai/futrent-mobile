import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/button.dart';

import '../../styles/colors.dart';

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
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background-login.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: const Color.fromRGBO(88, 105, 46, 0.85),
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
                      color: yellow,
                    ),
                  ),
                ),
                const Text(
                  'A FORMA MAIS FÁCIL DE PRATICAR\nSEU ESPORTE FAVORITO',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 120.0, 30.0, 5.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: darkGreen,
                      hintText: 'Email ou nome de usuário',
                      hintStyle: TextStyle(color: yellow),
                      labelText: 'USUÁRIO',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        color: yellow,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: yellow),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(width: 2.5, color: yellow),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: yellow),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      focusColor: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: yellow,
                      ),
                      hintText: 'Senha',
                      hintStyle: TextStyle(color: Colors.yellow),
                      labelText: 'SENHA',
                      labelStyle: TextStyle(
                        fontSize: 17.0,
                        color: yellow,
                        fontWeight: FontWeight.bold,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: yellow),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 10.0,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(width: 2.5, color: yellow),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: yellow),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      focusColor: red,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(190.0, 5.0, 0.0, 30.0),
                  child: Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(
                      color: yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonPrimary,
                  child: const Text(
                    'ENTRAR',
                    style:
                        TextStyle(fontSize: 21.0, fontWeight: FontWeight.w900),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 70.0),
                  child: Row(
                    children: [
                      Text('Ainda não possui uma conta? '),
                      Text(
                        'Registre-se agora.',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
