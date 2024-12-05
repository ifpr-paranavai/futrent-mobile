import 'package:flutter/material.dart';
import 'package:futrent_mobile/packages/users/presentation/controllers/signup_form_controller.dart';
import 'package:futrent_mobile/shared/components/signup/terms_checkbox.dart';
import 'package:futrent_mobile/shared/utils/validator.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final maskPhone = MaskTextInputFormatter(mask: '(##) #####-####');

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
            inputFormatters: [maskPhone],
            validator: (value) => Validator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
                labelText: 'Telefone', prefixIcon: Icon(Iconsax.mobile)),
          ),
          const SizedBox(height: 14),
          // TextFormField(
          //   controller: controller.city,
          //   validator: (value) => Validator.validateEmptyText('Cidade', value),
          //   expands: false,
          //   decoration: const InputDecoration(labelText: 'Cidade', prefixIcon: Icon(Iconsax.gps)),
          // ),
          // CSCPicker(
          //   layout: Layout.vertical,
          //   onCountryChanged: (country) {},
          //   onStateChanged: (country) {},
          //   onCityChanged: (value) {},
          //   dropdownHeadingStyle: Theme.of(context).textTheme.titleLarge,
          //   defaultCountry: CscCountry.Brazil,
          //   dropdownDialogRadius: 1,
          //   countryDropdownLabel: 'País',
          //   stateDropdownLabel: 'Estado',
          //   cityDropdownLabel: 'Cidade',
          //   dropdownDecoration: BoxDecoration(border: Border.all(color: black, width: 1.0), borderRadius: BorderRadius.circular(14)),
          // ),
          // const SizedBox(height: 14),
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
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => Validator.validatePassword(value),
              expands: false,
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: 'Senha',
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye)),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Obx(
            () => TextFormField(
              controller: controller.confirmPassword,
              validator: (value) => Validator.validatePassword(value),
              expands: false,
              obscureText: controller.hideConfirmPassword.value,
              decoration: InputDecoration(
                  labelText: 'Confirmação de Senha',
                  suffixIcon: IconButton(
                      onPressed: () => controller.hideConfirmPassword.value =
                          !controller.hideConfirmPassword.value,
                      icon: Icon(controller.hideConfirmPassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye)),
                  prefixIcon: const Icon(Iconsax.password_check)),
            ),
          ),
          const SizedBox(height: 14),
          const TermosPoliticaCheckBox(),
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
