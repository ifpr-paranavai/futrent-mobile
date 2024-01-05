import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/common/divider_social_media.dart';
import 'package:futrent_mobile/components/icons/social_media_icons.dart';
import 'package:futrent_mobile/pages/forgot_password.dart';
import 'package:futrent_mobile/pages/home_page.dart';
import 'package:futrent_mobile/pages/register_page.dart';

import '../../styles/colors.dart';
import '../../styles/primary_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Stack(
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
                          fontFamily: 'Rubik'),
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
                    child: PrimaryTextField(
                      borderColor: yellow,
                      fillColor: darkGreen,
                      focusColor: lightGreen,
                      prefixIconColor: yellow,
                      hintTextColor: yellow,
                      labelTextColor: yellow,
                      hintText: 'Email ou nome de usuário',
                      labelText: 'USUÁRIO',
                      obscureText: true,
                      controller: _userController,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    child: PrimaryTextField(
                      borderColor: yellow,
                      fillColor: darkGreen,
                      focusColor: lightGreen,
                      prefixIconColor: yellow,
                      hintTextColor: yellow,
                      labelTextColor: yellow,
                      hintText: 'Senha',
                      labelText: 'SENHA',
                      obscureText: true,
                      controller: _passwordController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(190.0, 5.0, 13.0, 30.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ForgotPasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        'ESQUECEU SUA SENHA?',
                        style: TextStyle(
                          color: yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const HomePage(),
                            ),
                          );
                        },
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                              fontSize: 21.0,
                              fontWeight: FontWeight.w900,
                              color: darkGreen),
                        ),
                      ),
                    ),
                  ),
                  DividerSocialMedia(
                    color: white,
                    valuePadding: 8.0,
                    height: 30,
                  ),
                  SocialMediaIcons(valuePadding: 8, circleBorderColor: white),
                  Padding(
                    padding: EdgeInsets.only(top: 70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ainda não possui uma conta? ',
                          style: TextStyle(color: white),
                        ),
                        GestureDetector(
                          child: Text(
                            'Registre-se agora.',
                            style: TextStyle(
                              color: yellow,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterPage(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
