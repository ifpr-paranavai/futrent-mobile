import 'package:flutter/material.dart';
import 'package:futrent_mobile/modules/login/controller/signup_form_contoller.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';
import 'package:futrent_mobile/utils/validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.name,
                  validator: (value) =>
                      Validator.validateEmptyText('Nome', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'Nome', prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      Validator.validateEmptyText('Sobrenome', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'Sobrenome', prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: controller.phone,
            validator: (value) => Validator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: 'Telefone', prefixIcon: Icon(Iconsax.mobile)),
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: controller.city,
            validator: (value) => Validator.validateEmptyText('Cidade', value),
            expands: false,
            decoration: const InputDecoration(
                labelText: 'Cidade', prefixIcon: Icon(Iconsax.gps)),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.address,
                  validator: (value) =>
                      Validator.validateEmptyText('Endereço', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'Endereço',
                      prefixIcon: Icon(Iconsax.location)),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: TextFormField(
                  validator: (value) =>
                      Validator.validateEmptyText('Número Residencial', value),
                  controller: controller.numberAddress,
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'Número', prefixIcon: Icon(Iconsax.location)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: controller.email,
            validator: (value) => Validator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: 'Email', prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: controller.password,
            validator: (value) => Validator.validatePassword(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: 'Senha', prefixIcon: Icon(Iconsax.password_check)),
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: controller.confirmPassword,
            validator: (value) => Validator.validatePassword(value),
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
                  style: Theme.of(context).textTheme.labelSmall!.apply(
                        color: DeviceUtility.isDarkMode(context)
                            ? white
                            : darkGreen,
                        decoration: TextDecoration.underline,
                        decorationColor: DeviceUtility.isDarkMode(context)
                            ? white
                            : darkGreen,
                      ),
                ),
              ),
              Text.rich(
                TextSpan(
                    text: ' e ', style: Theme.of(context).textTheme.labelSmall),
              ),
              Text.rich(
                TextSpan(
                  text: 'termos de uso',
                  style: Theme.of(context).textTheme.labelSmall!.apply(
                        color: DeviceUtility.isDarkMode(context)
                            ? white
                            : darkGreen,
                        decoration: TextDecoration.underline,
                        decorationColor: DeviceUtility.isDarkMode(context)
                            ? white
                            : darkGreen,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signUp(),
              child: const Text('Criar conta'),
            ),
          ),
        ],
      ),
    );
  }
}
