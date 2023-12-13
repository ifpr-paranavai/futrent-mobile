import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/button.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/styles/input.dart';
import 'package:futrent_mobile/styles/button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkGreen,
        shadowColor: darkGreen,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Lógica para lidar com o pressionamento do botão de voltar
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: PrimaryTextField(
                borderColor: yellow,
                fillColor: darkGreen,
                focusColor: lightGreen,
                hintText: 'Insira seu nome',
                labelText: 'NOME',
                obscureText: true,
                controller: _controller,
                icon: Icon(
                  Icons.person,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: PrimaryTextField(
                  borderColor: yellow,
                  fillColor: darkGreen,
                  focusColor: lightGreen,
                  hintText: 'Insira seu telefone',
                  labelText: 'TELEFONE',
                  obscureText: true,
                  controller: _controller,
                  icon: const Icon(
                    Icons.phone,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: PrimaryTextField(
                borderColor: yellow,
                fillColor: darkGreen,
                focusColor: lightGreen,
                hintText: 'Insira seu endereço',
                labelText: 'ENDEREÇO',
                obscureText: true,
                controller: _controller,
                icon: const Icon(
                  Icons.location_on,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: PrimaryTextField(
                  borderColor: yellow,
                  fillColor: darkGreen,
                  focusColor: lightGreen,
                  hintText: 'Insira seu email',
                  labelText: 'EMAIL',
                  obscureText: true,
                  controller: _controller,
                  icon: const Icon(
                    Icons.email,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: PrimaryTextField(
                  borderColor: yellow,
                  fillColor: darkGreen,
                  focusColor: lightGreen,
                  hintText: 'Confirme seu email',
                  labelText: 'CONFIRMAÇÃO DE EMAIL',
                  obscureText: true,
                  controller: _controller,
                  icon: const Icon(
                    Icons.email,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: PrimaryTextField(
                  borderColor: yellow,
                  fillColor: darkGreen,
                  focusColor: lightGreen,
                  hintText: 'Insira sua senha',
                  labelText: 'SENHA',
                  obscureText: true,
                  controller: _controller,
                  icon: const Icon(
                    Icons.password,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[600]!,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: PrimaryTextField(
                  borderColor: yellow,
                  fillColor: darkGreen,
                  focusColor: lightGreen,
                  hintText: 'Confirme sua senha',
                  labelText: 'CONFIRMAÇÃO DE SENHA',
                  obscureText: true,
                  controller: _controller,
                  icon: const Icon(
                    Icons.password,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!,
                    blurRadius: 15,
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 0.1,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: buttonPrimary,
                child: Text(
                  'CADASTRAR',
                  style: TextStyle(
                      color: darkGreen,
                      fontWeight: FontWeight.w900,
                      fontSize: 21.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
