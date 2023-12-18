import 'package:flutter/material.dart';
import 'package:futrent_mobile/styles/button.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/styles/primary_input.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 40, 0.0, 0.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: CircleAvatar(
                  backgroundColor: darkGreen,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 10, 40, 40),
              child: Container(
                width: 240,
                height: 240,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/icon-forgot-password.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        color: darkGreen,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Preencha seu email que enviaremos as informações de recuperação.',
                        style: TextStyle(color: darkGreen),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 50, 15, 40),
                      child: PrimaryTextField(
                        borderColor: darkGreen,
                        fillColor: white,
                        focusColor: lightGreen,
                        prefixIconColor: darkGreen,
                        hintTextColor: darkGreen,
                        labelTextColor: darkGreen,
                        hintText: 'Insira seu email de recuperação',
                        labelText: 'ENDEREÇO DE EMAIL',
                        obscureText: true,
                        controller: _controller,
                        icon: Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: buttonPrimary,
                      child: Text(
                        'ENVIAR',
                        style: TextStyle(
                            color: darkGreen,
                            fontWeight: FontWeight.w900,
                            fontSize: 21.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
