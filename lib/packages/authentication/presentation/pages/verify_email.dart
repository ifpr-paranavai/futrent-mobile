import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futrent_mobile/packages/authentication/data/authentication_remote_datasource.dart';
import 'package:futrent_mobile/packages/authentication/presentation/controllers/verify_email_controller.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';
import 'package:get/get.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRemoteDataSource.instance.logout(),
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
              Text(email ?? '',
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
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  child: const Text('Continuar'),
                ),
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => controller.sendEmailVerification(),
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
