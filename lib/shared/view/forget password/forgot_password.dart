import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/utils/validator.dart';
import 'package:futrent_mobile/shared/view/forget%20password/forget_password_controller.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final controller = Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 10, 40, 40),
              child: Container(
                width: 240,
                height: 240,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/icon-forgot-password.png'),
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
                    Text('Esqueceu sua senha?',
                        style: Theme.of(context).textTheme.headlineMedium),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Preencha seu email que enviaremos as informações de recuperação.',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 50, 15, 40),
                      child: Form(
                        key: controller.forgetPasswordFormKey,
                        child: TextFormField(
                          controller: controller.email,
                          validator: Validator.validateEmail,
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: 'Insira seu email',
                              prefixIcon: Icon(Iconsax.direct)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 50, 15, 40),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => controller.sendPasswordResetEmail(),
                          child: const Text('Enviar email'),
                        ),
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
