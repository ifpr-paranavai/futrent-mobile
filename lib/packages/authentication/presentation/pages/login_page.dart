import 'package:flutter/material.dart';
import 'package:futrent_mobile/packages/authentication/presentation/controllers/login_controller.dart';
import 'package:futrent_mobile/shared/components/common/divider_social_media.dart';
import 'package:futrent_mobile/shared/components/icons/social_media_icons.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/styles/primary_input.dart';
import 'package:futrent_mobile/shared/utils/validator.dart';
import 'package:futrent_mobile/shared/view/forget%20password/forgot_password.dart';
import 'package:futrent_mobile/packages/users/presentation/pages/register_page.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
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
            resizeToAvoidBottomInset: true,
            backgroundColor: darkGreen.withOpacity(0.7),
            body: SingleChildScrollView(
              child: Center(
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
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
                        padding:
                            const EdgeInsets.fromLTRB(30.0, 120.0, 30.0, 5.0),
                        child: PrimaryTextField(
                          borderColor: yellow,
                          fillColor: darkGreen,
                          focusColor: lightGreen,
                          prefixIconColor: yellow,
                          hintTextColor: yellow,
                          labelTextColor: yellow,
                          hintText: 'Email ou nome de usuário',
                          labelText: 'Usuário',
                          obscureText: false,
                          controller: controller.email,
                          validator: (value) => Validator.validateEmail(value),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                        child: Obx(
                          () => PrimaryTextField(
                            borderColor: yellow,
                            fillColor: darkGreen,
                            focusColor: lightGreen,
                            prefixIconColor: yellow,
                            hintTextColor: yellow,
                            labelTextColor: yellow,
                            hintText: 'Senha',
                            labelText: 'Senha',
                            obscureText: controller.hidePassword.value,
                            controller: controller.password,
                            validator: (value) =>
                                Validator.validatePassword('Senha'),
                            suffixIcon: IconButton(
                                onPressed: () => controller.hidePassword.value =
                                    !controller.hidePassword.value,
                                icon: Icon(controller.hidePassword.value
                                    ? Iconsax.eye_slash
                                    : Iconsax.eye)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ForgotPasswordPage(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0.0, 29, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Row(
                                  children: [
                                    Obx(
                                      () => Checkbox(
                                        checkColor: white,
                                        shape: const CircleBorder(),
                                        value: controller.rememberMe.value,
                                        onChanged: (value) =>
                                            controller.rememberMe.value =
                                                !controller.rememberMe.value,
                                      ),
                                    ),
                                    Text(
                                      'LEMBRAR-SE',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .apply(color: white),
                                    ),
                                  ],
                                ),
                              ),
                              Text('ESQUECEU SUA SENHA?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .apply(color: white)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 30, left: 30, top: 40),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () =>
                                controller.emailAndPasswordSignIn(),
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
                      SocialMediaIcons(
                          valuePadding: 8, circleBorderColor: white),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
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
            ),
          ),
        ],
      ),
    );
  }
}
