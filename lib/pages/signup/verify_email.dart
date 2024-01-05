import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futrent_mobile/modules/login/login_page.dart';
import 'package:futrent_mobile/pages/signup/success_page.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:get/get.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginPage()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              ///image
              Image(
                image: const AssetImage('assets/images/email-send.png'),
                width: DeviceUtility.getScreenWidth() * 0.6,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),

              ///title and subtitle
              Text('Verifique seu email!',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: Sizes.spaceBtwItems),
              Text('lipedahora2000@hotmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),

              const SizedBox(height: Sizes.spaceBtwItems),
              Text(
                  'Parabéns! Sua conta aguarda a confirmação de email para começar a praticar seus esportes.',
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),

              const SizedBox(height: Sizes.spaceBtwSections),

              ///buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessPage(
                        image: 'assets/images/success-icon.png',
                        title: 'Conta criada com sucesso',
                        subtitle:
                            'Bem vindo ao Futrent, sua conta foi criada. Aproveite agora a melhor forma de praticar seu esporte favorito',
                        onPressed: () => Get.to(() => const LoginPage()),
                      )),
                  child: const Text('Continuar'),
                ),
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Reenviar Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
