import 'package:flutter/material.dart';
import 'package:futrent_mobile/packages/users/presentation/controllers/signup_form_controller.dart';
import 'package:futrent_mobile/shared/styles/colors.dart';
import 'package:futrent_mobile/shared/utils/device_utility.dart';
import 'package:get/get.dart';

class TermosPoliticaCheckBox extends StatelessWidget {
  const TermosPoliticaCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(() => Checkbox(
              value: controller.acceptTerms.value,
              onChanged: (value) => controller.acceptTerms.value =
                  !controller.acceptTerms.value)),
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
                  color: DeviceUtility.isDarkMode(context) ? white : darkGreen,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      DeviceUtility.isDarkMode(context) ? white : darkGreen,
                ),
          ),
        ),
        Text.rich(
          TextSpan(text: ' e ', style: Theme.of(context).textTheme.labelSmall),
        ),
        Text.rich(
          TextSpan(
            text: 'termo de uso',
            style: Theme.of(context).textTheme.labelSmall!.apply(
                  color: DeviceUtility.isDarkMode(context) ? white : darkGreen,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      DeviceUtility.isDarkMode(context) ? white : darkGreen,
                ),
          ),
        ),
      ],
    );
  }
}
