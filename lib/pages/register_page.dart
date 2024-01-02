import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/common/divider_social_media.dart';
import 'package:futrent_mobile/components/icons/social_media_icons.dart';
import 'package:futrent_mobile/pages/signup/verify_email.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Registre-se agora mesmo',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 24),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: 'Nome',
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: 'Sobrenome',
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: 'Telefone',
                          prefixIcon: Icon(Iconsax.mobile)),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: 'Cidade', prefixIcon: Icon(Iconsax.gps)),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: 'Endereço',
                                prefixIcon: Icon(Iconsax.location)),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: 'Número',
                                prefixIcon: Icon(Iconsax.location)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: 'Email', prefixIcon: Icon(Iconsax.direct)),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: 'Senha',
                          prefixIcon: Icon(Iconsax.password_check)),
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: 'Confirmação de Senha',
                          prefixIcon: Icon(Iconsax.password_check)),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(value: true, onChanged: (value) {}),
                        ),
                        const SizedBox(height: 14),
                        Text.rich(
                          TextSpan(
                              text: 'Concordo com a ',
                              style: Theme.of(context).textTheme.labelSmall),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Política de privacidade',
                            style:
                                Theme.of(context).textTheme.labelSmall!.apply(
                                      color: dark ? white : darkGreen,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark ? white : darkGreen,
                                    ),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                              text: ' e ',
                              style: Theme.of(context).textTheme.labelSmall),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'termos de uso',
                            style:
                                Theme.of(context).textTheme.labelSmall!.apply(
                                      color: dark ? white : darkGreen,
                                      decoration: TextDecoration.underline,
                                      decorationColor: dark ? white : darkGreen,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const VerifyEmailPage()),
                        child: const Text('Criar conta'),
                      ),
                    ),
                    DividerSocialMedia(
                      color: dark ? white : darkGreen,
                      valuePadding: 0.0,
                      height: 30.0,
                    ),
                    SocialMediaIcons(
                        valuePadding: 0.0,
                        circleBorderColor: dark ? white : darkGreen),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
